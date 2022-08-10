import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

class AppBarCustome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustome({Key? key, this.title = 'BBC'}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      title: Text(
        title,
        style: GoogleFonts.pacifico(),
      ),
      centerTitle: true,
      backgroundColor: Platform.isAndroid ? Colors.blueGrey : Colors.redAccent,
      leading: const Icon(Icons.menu),
      actions: const [
        Icon(Icons.favorite),
        Icon(CupertinoIcons.add),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
