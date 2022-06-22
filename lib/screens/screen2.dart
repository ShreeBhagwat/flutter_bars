import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bars/screens/screen1.dart';
import 'package:flutter_bars/screens/screen3.dart';
import 'package:flutter_bars/screens/screen4.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key, required this.screenName}) : super(key: key);
  final String screenName;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(screenName),
          centerTitle: false,
          leading: IconButton(onPressed: () {
            
          }, icon: Icon(Icons.menu)),
          backgroundColor: Colors.red,
          // elevation: 20,
          bottom: TabBar(
            indicatorColor: Colors.purple,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home_tab',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings_tab',
              ),
              Tab(
                icon: Icon(Icons.message),
                text: 'Feed_tabs',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Screen1(screenName: 'Home_Tab'),
            Screen4(screenName: 'Settings_Tab'),
            Screen3(screenName: 'Feed Tab'),
          ],
        ),
      ),
    );
  }
}
