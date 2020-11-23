
import 'package:famintos_mobile/src/componente/comboProdutoWidget/comboProdutoBloc.dart';
import 'package:famintos_mobile/src/models/comboModel.dart';
import 'package:flutter/material.dart';

class ComboEspecialPage extends StatefulWidget {
  @override
  _ComboEspecialPageState createState() => _ComboEspecialPageState();
}

class _ComboEspecialPageState extends State<ComboEspecialPage> {

  ProdutosBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = ProdutosBloc();
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
        title: const Text('COMBO ESPECIAL'),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: bloc.listOut,
        builder: (context, AsyncSnapshot<List<ComboModel>> snapshot) {

          if(!snapshot.hasData) return Center(child: new CircularProgressIndicator(),);

          if(snapshot.hasError) return GestureDetector(
            onTap: (){
              bloc.listIn.add(true);
            },
            child: Text("Ops!! Houve um erro!"),);

          List<ComboModel> comboModels = snapshot.data; 

          return ListView.builder(
            itemCount: comboModels.length, 
            itemBuilder: (BuildContext context, int index) {
              ComboModel comboModel = comboModels[index];

              return ListTile(
                leading: CircleAvatar(child: Text("${comboModel.id}")),
                title: Text(comboModel.nome),
                subtitle: Text(comboModel.descricao),
                trailing: Text(comboModel.valor),
              );
            },

          );
        },
      ),
    );
  }
}
