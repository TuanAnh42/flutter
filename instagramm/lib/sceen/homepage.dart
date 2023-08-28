import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<String> profileImg = [
    "../images/profile.png",
    "../images/profile1.png",
    "../images/profile2.png",
    "../images/profile3.png",
    "../images/profile4.png",
    "../images/profile5.png",
    "../images/profile6.png",
    "../images/profile7.png",
  ];
  List<String> postImg = [
    "../images/post.png",
    "../images/post1.png",
    "../images/post2.jpeg",
    "../images/post3.jpeg",
    "../images/post4.jpeg",
    "../images/post5.jpeg",
    "../images/post6.jpeg",
    "../images/post7.jpeg",
  ];
  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        title: Row(children: [
          Image.asset(
            '../images/logo.png',
            // height: 10,
            // width: 20,
          )
        ]),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_outlined,
                size: 30,
                color: Colors.black87,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.email_outlined,
                size: 30,
                color: Colors.black87,
              )),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Container(
                      margin: EdgeInsets.all(7),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage("../images/story.png"),
                            child: CircleAvatar(
                              radius: 38,
                              backgroundImage: AssetImage(profileImg[index]),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Profile Name",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade200, width: 0.5),
                  ),
                ),
              ),
              Column(
                children: List.generate(
                  8,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(7),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage("../images/story.png"),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage:
                                        AssetImage(profileImg[index]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Profile Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz),
                            color: Colors.black87,
                          ),
                        ],
                      ),
                      //Image Post
                      Image.asset(postImg[index]),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border_outlined),
                            iconSize: 30,
                            color: Colors.black87,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mail_outline),
                            iconSize: 30,
                            color: Colors.black87,
                          ),
                          Transform.rotate(
                            angle: 45,
                            // Xoay 90 độ (hướng ngang)
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.details_outlined),
                              iconSize: 30,
                              color: Colors.black87,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.bookmark_border_outlined),
                            iconSize: 30,
                            color: Colors.black87,
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                                children: [
                                  TextSpan(text: "1000 lượt thích"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: " Profile Name",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                      text:
                                          "  Đây là một bức ảnh tuyệt vời mà không có ai đẹp bằng và nó là vô giá "),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "  Xem tất cả 2402 bình luận",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
