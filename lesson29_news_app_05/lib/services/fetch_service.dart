import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lesson29_news_app_05/const/api_const.dart';
import 'package:lesson29_news_app_05/model/top_news.dart';

class TopNewsRepo{
  final http.Client client = http.Client();
  Future <TopNews?> fetchTopNews([String? domain])async{
  final Uri uri = Uri.parse(ApiConst.topNews(domain));
  final http.Response responce = await client.get(uri);
  if(responce.statusCode == 200 || responce.statusCode == 201){
    print(responce.body);
    print('-----------------------------------');
    print(responce.body.runtimeType);
    final data = jsonDecode(responce.body);
    print(data.runtimeType);
    final topNews = TopNews.fromJson(data);
    print(topNews);
    return topNews;
  }
  return null;
  }
}