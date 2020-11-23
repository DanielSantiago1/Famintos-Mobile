import 'package:famintos_mobile/src/componente/sanduicheProdutoWidget/sanduicheProdutoService.dart';
import 'package:famintos_mobile/src/models/sanduicheModel.dart';
import 'package:rxdart/rxdart.dart';

class SanduicheProdutosBloc {

  SanduicheProdutoService service = SanduicheProdutoService();
  
  final BehaviorSubject<bool> _listController = BehaviorSubject<bool>.seeded(true);
  Sink<bool> get listIn => _listController.sink;
  Stream<List<SanduicheModel>> listOut;

  SanduicheProdutosBloc(){
    listOut = _listController.stream.asyncMap((d) => service.getSanduicheModels());
  }

  dispose(){
    _listController.close();
  }

}