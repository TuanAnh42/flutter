import 'package:flutter/material.dart';
import 'sceen/homepage.dart';
import 'sceen/searchpage.dart';
import 'sceen/account.dart';
import 'sceen/add.dart';
import 'sceen/video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.white),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    Widget currentPageWidget;
    switch (currentPage) {
      case 0:
        currentPageWidget = HomePage();
        break;
      case 1:
        currentPageWidget = SearchPage();
        break;
      case 2:
        currentPageWidget = AddPage();
        break;
      case 3:
        currentPageWidget = VideoPage();
        break;
      case 4:
        currentPageWidget = AccountPage();
        break;

      default:
        currentPageWidget = Container();
    }
    return Scaffold(
      body: currentPageWidget,
      bottomNavigationBar: BottomAppBar(
        child: Row(children: [
          Spacer(),
          IconButton(
            icon: Icon(Icons.home_outlined),
            iconSize: 40,
            color: Colors.black87,
            onPressed: () {
              setState(() {
                currentPage = 0;
              });
            },
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 40,
            color: Colors.black87,
            onPressed: () {
              setState(() {
                currentPage = 1;
              });
            },
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            iconSize: 40,
            color: Colors.black87,
            onPressed: () {
              setState(() {
                currentPage = 2;
              });
            },
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.slow_motion_video_outlined),
            iconSize: 40,
            color: Colors.black87,
            onPressed: () {
              setState(() {
                currentPage = 3;
              });
            },
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.person_outlined),
            iconSize: 40,
            color: Colors.black87,
            onPressed: () {
              setState(() {
                currentPage = 4;
              });
            },
          ),
          Spacer(),
        ]),
      ),
    );
  }
}
