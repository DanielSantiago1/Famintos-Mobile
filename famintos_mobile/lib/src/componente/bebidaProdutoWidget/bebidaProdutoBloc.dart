import 'package:famintos_mobile/src/componente/bebidaProdutoWidget/bebidaProdutoService.dart';
import 'package:famintos_mobile/src/models/bebidaModel..dart';
import 'package:rxdart/rxdart.dart';

class BebidaProdutosBloc {

  BebidaProdutoService service = BebidaProdutoService();
  
  final BehaviorSubject<bool> _listController = BehaviorSubject<bool>.seeded(true);
  Sink<bool> get listIn => _listController.sink;
  Stream<List<BebidaModel>> listOut;

  BebidaProdutosBloc(){
    listOut = _listController.stream.asyncMap((d) => service.getBebidaModels());
  }

  dispose(){
    _listController.close();
  }

}