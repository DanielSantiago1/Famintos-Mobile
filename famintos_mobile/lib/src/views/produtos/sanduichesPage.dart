import 'package:famintos_mobile/src/componente/sanduicheProdutoWidget/sanduicheProdutoBloc.dart';
import 'package:famintos_mobile/src/models/sanduicheModel.dart';
import 'package:flutter/material.dart';

class SanduichePage extends StatefulWidget {
  @override
  _SanduichePageState createState() => _SanduichePageState();
}

class _SanduichePageState extends State<SanduichePage> {

  SanduicheProdutosBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = SanduicheProdutosBloc();
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
        title: const Text('SANDUICHES'),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: bloc.listOut,
        builder: (context, AsyncSnapshot<List<SanduicheModel>> snapshot) {

          if(!snapshot.hasData) return Center(child: new CircularProgressIndicator(),);

          if(snapshot.hasError) return GestureDetector(
            onTap: (){
              bloc.listIn.add(true);
            },
            child: Text("Ops!! Houve um erro!"),);

          List<SanduicheModel> sanduicheModels = snapshot.data;

          return ListView.builder(
            itemCount: sanduicheModels.length, 
            itemBuilder: (BuildContext context, int index) {
              SanduicheModel sanduicheModel = sanduicheModels[index];

              return ListTile(
                leading: CircleAvatar(child: Text("${sanduicheModel.id}")),
                title: Text(sanduicheModel.nome),
                subtitle: Text(sanduicheModel.descricao),
                trailing: Text(sanduicheModel.valor),
              );
            },

          );
        },
      ),
    );
  }
}
