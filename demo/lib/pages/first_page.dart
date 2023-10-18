// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import "package:demo/pages/home_page.dart";
import "package:demo/pages/profile_page.dart";
import "package:demo/pages/settings_page.dart";
import "package:flutter/material.dart";

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // this keeps track of the current page to display
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    // home page
    HomePage(),

    // profile page
    ProfilePage(),

    // settings page
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('1st page')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          // home,
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          // profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),

          // settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
      // drawer: Drawer(
      //   backgroundColor: Colors.deepPurple[200],
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //         child: Icon(
      //           Icons.favorite,
      //           size: 48,
      //         ),
      //       ),

      //       // home page list title
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("H O M E"),
      //         onTap: () {
      //           Navigator.pop(context);
      //           // go to home page
      //           Navigator.pushNamed(context, '/homepage');
      //         },
      //       ),

      //       // settings page list title
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text("S E T T I N G S"),
      //         onTap: () {
      //           Navigator.pop(context);
      //           // go to settings page
      //           Navigator.pushNamed(context, '/settingspage');
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text('Go to Second Page'),
      //     onPressed: () {
      //       // navigate to second page
      //       Navigator.pushNamed(context, '/secondpage');
      //     },
      //   ),
      // ),
    );
  }
}
