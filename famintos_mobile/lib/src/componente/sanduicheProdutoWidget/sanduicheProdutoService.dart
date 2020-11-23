import 'package:dio/dio.dart';
import 'package:famintos_mobile/src/models/sanduicheModel.dart';
import 'package:famintos_mobile/src/shared/constants.dart';

class SanduicheProdutoService {
  Dio dio = Dio();

  // ignore: missing_return
  Future<List<SanduicheModel>> getSanduicheModels() async {
    // ignore: unnecessary_brace_in_string_interps
    Response response = await dio.get('${BASE_URL}/sanduishe');

    if (response.statusCode == 200){
      List<SanduicheModel> sanduicheModels = 
        (response.data as List).map((item) => SanduicheModel.fromJson(item)).toList();

      return sanduicheModels;
    }else{
      Exception("Erro na requisição");
    }
  }

  // ignore: missing_return
  Future<SanduicheModel> getSanduicheModel(int id) async {
    // ignore: unnecessary_brace_in_string_interps
    Response response = await dio.get('${BASE_URL}/sanduicheModels/$id');

    if (response.statusCode == 200){
      return SanduicheModel.fromJson(response.data);
    }else{
      Exception("Erro na requisição");
    }
  }
}