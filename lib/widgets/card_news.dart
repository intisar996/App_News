import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/model/news.dart';
import 'package:news_app/view/page_webview.dart';

class CardNews extends StatelessWidget {
  const CardNews({Key? key, required this.data}) : super(key: key);
  final ModelNews data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: InkWell(
        onTap: () {
          gotoWebView(context);
        },
        child: Card(
          elevation: 5,
          color: Colors.white,
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              //* Image News
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(data.imageUrl),
                    )),
              )),

              //*Title News
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                    margin: const EdgeInsets.only(left: 5),
                    child: Text(data.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            GoogleFonts.aBeeZee(fontWeight: FontWeight.bold)),
                  )),
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
            PageWebView(title: data.title, url: data.urlPage));
    Navigator.push(context, route);
  }
}
