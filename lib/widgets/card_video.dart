import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/model/video.dart';

import '../view/page_webview.dart';

class CardVideo extends StatelessWidget {
  const CardVideo({Key? key, required this.data}) : super(key: key);
  final ModelVideo data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: InkWell(
        onTap: () => gotoWebView(context),
        child: Card(
          color: Colors.white,
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              //* Image
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(data.imageUrl),
                      )),
                ),
              ),

              //* News Title

              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.transparent,
                  child: Center(
                    child: Text(
                      data.title,
                      style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // * go to Page Web View
  void gotoWebView(BuildContext context) {
    MaterialPageRoute<PageWebView> route = MaterialPageRoute(
        builder: (context) =>
            PageWebView(title: data.title, url: data.videoUrl));
    Navigator.push(context, route);
  }
}
