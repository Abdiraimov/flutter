import 'package:http/http.dart' as http;
import 'package:lesson26_news_app_02/const/api_const.dart';

class TopNewsRepo{
  final http.Client client = http.Client();
  Future <void> fetchTopNews()async{
  final Uri uri = Uri.parse(ApiConst.topNews);
  final http.Response responce = await client.get(uri);
  if(responce.statusCode == 200 || responce.statusCode == 201){
    print(responce.body);
  }
  }
}