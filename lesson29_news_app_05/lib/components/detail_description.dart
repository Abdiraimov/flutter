import 'package:flutter/material.dart';
import 'package:lesson29_news_app_05/model/article.dart';
import 'package:lesson29_news_app_05/theme/app_text_styles.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Text(
      article.description.toString(),
      textAlign: TextAlign.center,
      style: AppTextStyles.descriptionTextStyle,
    );
  }
}