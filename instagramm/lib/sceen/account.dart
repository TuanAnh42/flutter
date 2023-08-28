import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade200),
              ),
            ),
            child: AppBar(
              elevation: 0,
              title: Text("Profile Name"),
              actions: [
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.add_circle_outline),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 10),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage("../images/profile.png")),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          "0",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Bài viết",
                          style: TextStyle(fontSize: 15, letterSpacing: 0.5),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "20",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Người theo dõi",
                          style: TextStyle(fontSize: 12, letterSpacing: 0.5),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "60",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Đang theo dõi",
                          style: TextStyle(fontSize: 12, letterSpacing: 0.5),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(children: [
              SizedBox(
                width: 25,
              ),
              Text(
                "Tuan Anh",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(125, 40),
                      backgroundColor: Colors.grey.shade200,
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    child: Center(
                      child: Text(
                        'Chỉnh Sửa',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(140, 40),
                      backgroundColor: Colors.grey.shade200,
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    child: Center(
                      child: Text(
                        'Chia sẻ trang cá nhân',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      // minimumSize: Size(10, 40),
                      side: BorderSide(color: Colors.grey.shade300),
                      backgroundColor: Colors.grey.shade200,
                    ),
                    child: Icon(Icons.person_add_outlined, color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [],
            ),
            TabBar.secondary(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.grid_on_sharp,
                    size: 30,
                    color: Colors.black87,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person_pin_outlined,
                    size: 30,
                    color: Colors.black87,
                  ),
                ),
              ],
              indicatorColor: Colors.black87,
            ),
          ]),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
