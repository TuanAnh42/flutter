import 'package:flutter/material.dart';

Future<void> onRefresh() async {
  await Future.delayed(Duration(seconds: 1));
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.grey.shade300,
            child: Row(children: [
              Icon(Icons.search, color: Colors.grey.shade500),
              SizedBox(
                width: 5,
              ),
              Container(
                child: Text(
                  "Search",
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              )
            ]),
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: GridView.builder(
          itemCount: 20,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: ((context, index) {
            return Padding(
              padding: EdgeInsets.all(2.0),
              child: Container(color: Colors.blue.shade100),
            );
          }),
        ),
      ),
    );
  }
}
