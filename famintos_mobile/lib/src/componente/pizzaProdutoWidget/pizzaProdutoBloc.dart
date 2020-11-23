
import 'package:famintos_mobile/src/componente/pizzaProdutoWidget/pizzaProdutoService.dart';
import 'package:famintos_mobile/src/models/pizzaModel.dart';
import 'package:rxdart/rxdart.dart';

class PizzaProdutosBloc {

  PizzaProdutoService service = PizzaProdutoService();
  
  final BehaviorSubject<bool> _listController = BehaviorSubject<bool>.seeded(true);
  Sink<bool> get listIn => _listController.sink;
  Stream<List<PizzaModel>> listOut;

  PizzaProdutosBloc(){
    listOut = _listController.stream.asyncMap((d) => service.getPizzaModels());
  }

  dispose(){
    _listController.close();
  }

}