import 'package:flutter/material.dart';

import '../tabs/tab_one.dart';
import '../tabs/tab_three.dart';
import '../tabs/tab_two.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // 3 tabs
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('TAB BAR'),
          backgroundColor: Colors.deepPurple,
        ),

        // TabBar Background Color
        backgroundColor: Colors.deepPurple,
        body: Column(
          children: [
            TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.home, color: Colors.white),
                ),
                Tab(
                  icon: Icon(Icons.person, color: Colors.white),
                ),
                Tab(
                  icon: Icon(Icons.settings, color: Colors.white),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // 1st Tab
                  TabOne(),

                  // 2nd Tab
                  TabTwo(),

                  // 3rd Tab
                  TabThree(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
