import 'package:dio/dio.dart';
import 'package:famintos_mobile/src/models/bebidaModel..dart';
import 'package:famintos_mobile/src/shared/constants.dart';

class BebidaProdutoService {
  Dio dio = Dio();

  // ignore: missing_return
  Future<List<BebidaModel>> getBebidaModels() async {
    // ignore: unnecessary_brace_in_string_interps
    Response response = await dio.get('${BASE_URL}/bebidas');

    if (response.statusCode == 200){
      List<BebidaModel> bebidaModels = 
        (response.data as List).map((item) => BebidaModel.fromJson(item)).toList();

      return bebidaModels;
    }else{
      Exception("Erro na requisição");
    }
  }

  // ignore: missing_return
  Future<BebidaModel> getBebidaModel(int id) async {
    // ignore: unnecessary_brace_in_string_interps
    Response response = await dio.get('${BASE_URL}/bebidaModels/$id');

    if (response.statusCode == 200){
      return BebidaModel.fromJson(response.data);
    }else{
      Exception("Erro na requisição");
    }
  }
}