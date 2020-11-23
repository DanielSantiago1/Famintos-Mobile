
import 'package:famintos_mobile/src/componente/comboProdutoWidget/comboprodutoService.dart';
import 'package:famintos_mobile/src/models/comboModel.dart';
import 'package:rxdart/rxdart.dart';

class ProdutosBloc {

  ProdutoService service = ProdutoService();
  
  final BehaviorSubject<bool> _listController = BehaviorSubject<bool>.seeded(true);
  Sink<bool> get listIn => _listController.sink;
  Stream<List<ComboModel>> listOut;

  ProdutosBloc(){
    listOut = _listController.stream.asyncMap((d) => service.getComboModels());
  }

  dispose(){
    _listController.close();
  }

}