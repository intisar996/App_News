import 'package:flutter/material.dart';
import 'package:news_app/controller/video.dart';
import 'package:news_app/widgets/card_video.dart';

class BodyVideo extends StatelessWidget {
  const BodyVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ControllerVideo.length,
        itemBuilder: (context, index) =>
            CardVideo(data: ControllerVideo.getVideo(index)));
  }
}
