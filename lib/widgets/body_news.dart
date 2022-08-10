import 'package:flutter/material.dart';

import '../controller/news.dart';
import 'card_news.dart';

class BodyNews extends StatelessWidget {
  const BodyNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ControllerNews.length,
      itemBuilder: (context, index) =>
          CardNews(data: ControllerNews.getNews(index)),
    );
  }
}
