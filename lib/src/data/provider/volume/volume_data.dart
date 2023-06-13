import 'package:dio/dio.dart';

final dio = Dio();

Future<Map<String,dynamic>>getListVolumes() async {
  final response = await dio.get('https://www.googleapis.com/books/v1/volumes?q=a');
  if (response.statusCode == 200) {
      return response.data;
  }else{
    return {'error' : 'falha na comunicação com o servidor!'};
  }
}