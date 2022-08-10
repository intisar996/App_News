import 'package:flutter/material.dart';

class BNBCustom extends StatelessWidget {
  const BNBCustom({Key? key, required this.index, required this.callBack})
      : super(key: key);
  final int index;
  final void Function(int) callBack;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      onTap: callBack,
      currentIndex: index,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey.shade400,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.article_outlined),
          activeIcon: Icon(Icons.article_rounded),
          label: 'News',
          backgroundColor: Colors.redAccent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library_outlined),
          activeIcon: Icon(Icons.video_library_rounded),
          label: 'Video',
          backgroundColor: Colors.blueGrey,
        ),
      ],
    );
  }
}
