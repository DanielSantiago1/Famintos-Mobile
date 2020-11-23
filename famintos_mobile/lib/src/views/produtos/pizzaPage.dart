import 'package:famintos_mobile/src/componente/pizzaProdutoWidget/pizzaProdutoBloc.dart';
import 'package:famintos_mobile/src/models/pizzaModel.dart';
import 'package:flutter/material.dart';

class PizzaPage extends StatefulWidget {
  @override
  _PizzaPageState createState() => _PizzaPageState();
}


class _PizzaPageState extends State<PizzaPage> {
  
  PizzaProdutosBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = PizzaProdutosBloc();
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
        title: const Text('PIZZA'),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: bloc.listOut,
        builder: (context, AsyncSnapshot<List<PizzaModel>> snapshot) {

          if(!snapshot.hasData) return Center(child: new CircularProgressIndicator(),);

          if(snapshot.hasError) return GestureDetector(
            onTap: (){
              bloc.listIn.add(true);
            },
            child: Text("Ops!! Houve um erro!"),);

          List<PizzaModel> pizzaModels = snapshot.data;

          return ListView.builder(
            itemCount: pizzaModels.length, 
            itemBuilder: (BuildContext context, int index) {
              PizzaModel pizzaModel = pizzaModels[index];

              return ListTile(
                leading: CircleAvatar(child: Text("${pizzaModel.id}")),
                title: Text(pizzaModel.nome),
                subtitle: Text(pizzaModel.descricao),
                trailing: Text(pizzaModel.valor),
              );
            },

          );
        },
      ),
    );
  }
}
