import 'package:dio/dio.dart';
import 'package:famintos_mobile/src/models/pizzaModel.dart';
import 'package:famintos_mobile/src/shared/constants.dart';

class PizzaProdutoService {
  Dio dio = Dio();

  // ignore: missing_return
  Future<List<PizzaModel>> getPizzaModels() async {
    // ignore: unnecessary_brace_in_string_interps
    Response response = await dio.get('${BASE_URL}/pizza');

    if (response.statusCode == 200){
      List<PizzaModel> pizzaModels = 
        (response.data as List).map((item) => PizzaModel.fromJson(item)).toList();

      return pizzaModels;
    }else{
      Exception("Erro na requisição");
    }
  }

  // ignore: missing_return
  Future<PizzaModel> getPizzaModel(int id) async {
    // ignore: unnecessary_brace_in_string_interps
    Response response = await dio.get('${BASE_URL}/pizzaModels/$id');

    if (response.statusCode == 200){
      return PizzaModel.fromJson(response.data);
    }else{
      Exception("Erro na requisição");
    }
  }
}