import 'package:famintos_mobile/src/componente/bebidaProdutoWidget/bebidaProdutoBloc.dart';
import 'package:famintos_mobile/src/models/bebidaModel..dart';
import 'package:flutter/material.dart';

class CategotiaPage extends StatefulWidget {
  @override
  _CategotiaPageState createState() => _CategotiaPageState();
}

class _CategotiaPageState extends State<CategotiaPage> {


  BebidaProdutosBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BebidaProdutosBloc();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6D4C41),
        title: const Text('CATEGORIA DE BEBIDAS'),
        centerTitle: true,
      ),
    body: StreamBuilder(
        stream: bloc.listOut,
        builder: (context, AsyncSnapshot<List<BebidaModel>> snapshot) {

          if(!snapshot.hasData) return Center(child: new CircularProgressIndicator(),);

          if(snapshot.hasError) return GestureDetector(
            onTap: (){
              bloc.listIn.add(true);
            },
            child: Text("Ops!! Houve um erro!"),);

          List<BebidaModel> bebidaModels = snapshot.data;

          return ListView.builder(
            itemCount: bebidaModels.length, 
            itemBuilder: (BuildContext context, int index) {
              BebidaModel bebidaModel = bebidaModels[index];

              return ListTile(
                leading: CircleAvatar(child: Text("${bebidaModel.id}")),
                title: Text(bebidaModel.nome),
                subtitle: Text(bebidaModel.descricao),
                trailing: Text(bebidaModel.valor),
              );
            },

          );
        },
      ),
    );
  }
}
