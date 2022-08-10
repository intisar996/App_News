import 'package:news_app/model/video.dart';

class ControllerVideo {
  // * Build Data

  static List<ModelVideo> dataVideo = [
    ModelVideo(
      title: 'Lost Treasures of Egypt',
      imageUrl: 'https://assets-natgeotv.fnghub.com/Videos/57430.ThumbL.jpg',
      videoUrl: 'https://www.youtube.com/watch?v=-obKX-mqjXQ',
    ),
    ModelVideo(
      title: 'Jordan: a travel documentary',
      imageUrl: 'https://i.ytimg.com/vi/3uFqt7XonZU/maxresdefault.jpg',
      videoUrl: 'https://www.youtube.com/watch?v=3uFqt7XonZU',
    ),
    ModelVideo(
      title: 'ancient mesopotamia',
      imageUrl:
          'https://www.history.com/.image/t_share/MTY3Mjg3NTUxNTkyMjQ1MDU3/mesopotamia-gettyimages-152200992.jpg',
      videoUrl: 'https://www.youtube.com/watch?v=xVf5kZA0HtQ',
    ),
    ModelVideo(
      title: 'Savage Kingdom',
      imageUrl:
          'https://images-na.ssl-images-amazon.com/images/I/91nw9NVZ4IL._RI_.jpg',
      videoUrl: 'https://www.youtube.com/watch?v=3rHxgKI97s4',
    ),
    ModelVideo(
      title: 'New Zealand\'s Stunning Landscapes',
      imageUrl: 'https://i.ytimg.com/vi/1Evj5XMTWEo/maxresdefault.jpg',
      videoUrl: 'https://www.youtube.com/watch?v=1Evj5XMTWEo',
    ),
  ];

  // * List Length
  static int get length => dataVideo.length;

  // * get video
  static ModelVideo getVideo(int index) => dataVideo.elementAt(index);
}
