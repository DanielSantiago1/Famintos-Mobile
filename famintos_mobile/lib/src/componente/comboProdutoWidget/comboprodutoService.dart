import 'package:famintos_mobile/src/models/comboModel.dart';
import 'package:famintos_mobile/src/shared/constants.dart';
import 'package:dio/dio.dart';

class ProdutoService {
  Dio dio = Dio();

  // ignore: missing_return
  Future<List<ComboModel>> getComboModels() async {
    // ignore: unnecessary_brace_in_string_interps
    Response response = await dio.get('${BASE_URL}/combos');

    if (response.statusCode == 200){
      List<ComboModel> comboModels = 
        (response.data as List).map((item) => ComboModel.fromJson(item)).toList();
        print(response);
      return comboModels;
    }else{
      Exception("Erro na requisição");
    }
  }

  // ignore: missing_return
  Future<ComboModel> getComboModel(int id) async {
    // ignore: unnecessary_brace_in_string_interps
    Response response = await dio.get('${BASE_URL}/comboModels/$id');

    if (response.statusCode == 200){
      return ComboModel.fromJson(response.data);
    }else{
      Exception("Erro na requisição");
    }
  }
}