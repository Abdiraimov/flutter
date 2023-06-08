import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lesson29_news_app_05/const/api_const.dart';
import 'package:lesson29_news_app_05/model/article.dart';
import 'package:lesson29_news_app_05/theme/app_colors.dart';
import 'package:lesson29_news_app_05/theme/sized.dart';
import 'package:lesson29_news_app_05/view/detail_view.dart';

class CardNews extends StatelessWidget {
  const CardNews({
    super.key,
    required this.news,
  });

  final Article news;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailView(
              article: news,
            ),
          ),
        );
      },
      child: Card(
        color: AppColors.cardColor,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: CachedNetworkImage(
                imageUrl: news.urlToImage ??
                    ApiConst.newsImage,
                placeholder: (context, url) =>                               
                    Image.asset('assets/News.jpg'),
                errorWidget: (context, url, error) =>
                    Image.asset('assets/napaka.jpg'),
              ),
            ),
            Sized.width5,
            Expanded(
              flex: 5,
              child: Text(news.title),
            ),
          ],
        ),
      ),
    );
  }
}