import 'package:flutter/material.dart';

Future<void> onRefresh() async {
  await Future.delayed(Duration(seconds: 1));
}

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reels",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          Icon(
            Icons.camera_alt_outlined,
            size: 30,
            color: Colors.black87,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
          )
        ],
      ),
      body: RefreshIndicator(onRefresh: onRefresh, child: CustomScrollView()),
    );
  }
}
