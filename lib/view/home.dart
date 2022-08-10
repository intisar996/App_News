import 'package:flutter/material.dart';
import 'package:news_app/widgets/appbar_custome.dart';
import 'package:news_app/widgets/bnv_custome.dart';
import 'package:news_app/widgets/body_news.dart';
import 'package:news_app/widgets/body_video.dart';

class PageHome extends StatefulWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  // *current index

  int index = 0;

  // * list body home
  List<Widget> bodyList = const [BodyNews(), BodyVideo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustome(),
      body: bodyList[index],
      bottomNavigationBar: BNBCustom(
        index: index,
        callBack: rebuild,
      ),
    );
  }

  // * change index  from click BNB

  void rebuild(int currentIndex) {
    print('callback: $currentIndex');
    //* rebuild
    index = currentIndex;
    setState(() {});
  }
}
