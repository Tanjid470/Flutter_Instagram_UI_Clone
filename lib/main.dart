import 'package:flutter/material.dart';
import 'Pages/Profile.dart';
import 'Pages/extra.dart';
import 'Pages/home.dart';
import 'Pages/video.dart';
import 'Pages/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Hello World',
      theme: ThemeData(
        backgroundColor: Colors.grey,
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(title: 'Instagram',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
          SearchBarScreen(),
          Text('Add'),
          Video(),
          UI2(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xffbab1b1),
        selectedItemColor: Colors.white,
        iconSize: 24,
        currentIndex: currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_off_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined), label: ''),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.purple,
                backgroundImage: NetworkImage(
                    'https://th.bing.com/th?id=OSK.KeIijA181Ged9wRqNlkO_Q&w=100&h=100&c=8&o=6&pid=SANGAM'),
              ),
              label: ''),
        ],
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
          _pageController.jumpToPage(value);
        },
      ),
    );
  }
}
