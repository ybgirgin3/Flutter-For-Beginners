// ignore_for_file: prefer_const_constructors

import 'package:demo/pages/first_page.dart';
import 'package:demo/pages/home_page.dart';
import 'package:demo/pages/second_page.dart';
import 'package:demo/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // List names = ['yusuf', 'bekocan', 'girgin'];

  // void userTapped() {
  //   print('user tapped');
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
      },
      // home: Scaffold(
      //   body: Center(
      //     child: GestureDetector(
      //       // do something, user tapped the container
      //       onTap: () => userTapped(),
      //       child: Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.deepPurple[200],
      //         child: Center(child: Text('tap me mf!!!')),
      //       ),
      //     ),
      //   ),
      //   //     body: Stack(
      //   //   children: [
      //   //     // big
      //   //     Container(
      //   //       height: 300,
      //   //       width: 300,
      //   //       color: Colors.deepOrange,
      //   //     ),

      //   //     // medium
      //   //     Container(
      //   //       height: 200,
      //   //       width: 200,
      //   //       color: Colors.deepOrange[400],
      //   //     ),

      //   //     // small
      //   //     Container(
      //   //       height: 100,
      //   //       width: 100,
      //   //       color: Colors.deepOrange[200],
      //   //     ),
      //   //   ],
      //   // )

      //   // body: GridView.builder(
      //   //   itemCount: 64,
      //   //   gridDelegate:
      //   //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      //   //   itemBuilder: (context, index) => Container(
      //   //     color: Colors.deepOrange,
      //   //     margin: EdgeInsets.all(2),
      //   //   ),
      //   // ),
      //   // body: ListView.builder(
      //   //   itemCount: names.length,
      //   //   itemBuilder: (context, index) => ListTile(
      //   //     title: Text(
      //   //       index.toString(),
      //   //     ),
      //   //   ),
      //   // ),
      // )
      // home: Scaffold(
      //   backgroundColor: Colors.deepPurple[200],
      //   // appBar: AppBar(
      //   //   title: Text("Flutter App"),
      //   //   backgroundColor: Colors.deepPurple,
      //   //   elevation: 0,
      //   //   leading: Icon(Icons.menu),
      //   //   actions: [
      //   //     IconButton(
      //   //       onPressed: () {},
      //   //       icon: Icon(Icons.logout),
      //   //     ),
      //   //   ],
      //   // ),
      //   body: ListView(
      //     children: [
      //       // 1 st box
      //       Container(
      //         height: 350,
      //         color: Colors.deepPurple[300],
      //       ),

      //       // 2nd box
      //       Container(
      //         height: 350,
      //         color: Colors.deepPurple[400],
      //       ),

      //       // 3rd box
      //       Container(
      //         height: 350,
      //         color: Colors.deepPurple[500],
      //       )
      //     ],
      //   ),

      //   // body: Column(children: [
      //   //   // 1 st box
      //   //   Expanded(
      //   //     child: Container(
      //   //       color: Colors.deepPurple[300],
      //   //     ),
      //   //   ),

      //   //   // 2nd box
      //   //   Expanded(
      //   //     child: Container(
      //   //       color: Colors.deepPurple[400],
      //   //     ),
      //   //   ),

      //   //   // 3rd box
      //   //   Expanded(
      //   //     child: Container(
      //   //       color: Colors.deepPurple[500],
      //   //     ),
      //   //   )
      //   // ]),

      //   // body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      //   //   // 1 st box
      //   //   Container(
      //   //     width: 300,
      //   //     height: 300,
      //   //     color: Colors.deepPurple[300],
      //   //   ),

      //   //   // 2nd box
      //   //   Container(
      //   //     width: 200,
      //   //     height: 200,
      //   //     color: Colors.deepPurple[400],
      //   //   ),

      //   //   // 3rd box
      //   //   Container(
      //   //     width: 100,
      //   //     height: 100,
      //   //     color: Colors.deepPurple[500],
      //   //   )
      //   // ]),

      //   // body: Center(
      //   //   child: Container(
      //   //       width: 300,
      //   //       height: 300,
      //   //       decoration: BoxDecoration(
      //   //         color: Colors.deepPurple,
      //   //         borderRadius: BorderRadius.circular(20),
      //   //       ),
      //   //       padding: EdgeInsets.all(25),
      //   //       // padding: EdgeInsets.only(left: 25),
      //   //       child: Icon(
      //   //         Icons.favorite_border_rounded,
      //   //         color: Colors.amber,
      //   //         size: 100,
      //   //       )
      //   //       // child: Text(
      //   //       //   'Bekocan',
      //   //       //   style: TextStyle(
      //   //       //     color: Colors.deepPurple[200],
      //   //       //     fontSize: 28,
      //   //       //     fontWeight: FontWeight.bold,
      //   //       //   ),
      //   //       // ),
      //   //       // child: Icon(Icons.favorite_border_rounded),
      //   //       ),
      //   // ),
      // ),
    );
  }
}
