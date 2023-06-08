import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lesson29_news_app_05/components/detail_description.dart';
import 'package:lesson29_news_app_05/components/detail_divider.dart';
import 'package:lesson29_news_app_05/components/detail_news_time.dart';
import 'package:lesson29_news_app_05/components/detail_site_button.dart';
import 'package:lesson29_news_app_05/components/detail_title.dart';
import 'package:lesson29_news_app_05/model/article.dart';
import 'package:lesson29_news_app_05/theme/app_colors.dart';
import 'package:share_plus/share_plus.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    final newsTime = DateFormat('d MMMM y H:m').format(
      DateTime.parse(article.publishedAt),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.detailColor,
        centerTitle: true,
        title: Text(article.title),
         actions: [
          IconButton(onPressed: () {
            Share.share(article.url);
          }, icon: const Icon(Icons.share)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DetailTitle(article: article),
              const SizedBox(
                height: 15,
              ),
              const DetailDivider(),
              DetailNewsTime(newsTime: newsTime),
              const SizedBox(
                height: 15,
              ),
              Image.network(article.urlToImage.toString()),
              const SizedBox(
                height: 15,
              ),
              DetailDescription(article: article),
              DetailSiteButton(article: article)
            ],
          ),
        ),
      ),
    );
  }
}
