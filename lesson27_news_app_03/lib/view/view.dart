import 'package:flutter/material.dart';
import 'package:lesson27_news_app_03/const/api_const.dart';
import 'package:lesson27_news_app_03/model/top_news.dart';
import 'package:lesson27_news_app_03/services/fetch_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;
  Future<void> fetchNews() async {
    topNews = await TopNewsRepo().fetchTopNews();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffe5722),
        title: const Text(
          'News Aggregator',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Colors.white,
          )
        ],
      ),
      body: topNews == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: topNews!.article.length,
              itemBuilder: (context, index) {
                final news = topNews!.article[index];
                return InkWell(
                  onTap: () {
                    
                  },
                  child: Card(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Image.network(
                              news.urlToImage ?? ApiConst.newsImage),
                        ),
                        Expanded(
                          flex: 5,
                          child: Text(news.title),
                        ),
                      ],
                    ),
                  ),
                );
              }),
    );
  }
}
