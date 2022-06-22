import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bars/widgets/navigation_drawer_widget.dart';

class Screen5 extends StatelessWidget {
  Screen5({Key? key, required this.screenName}) : super(key: key);
  final String screenName;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(screenName),
        backgroundColor: Colors.purple,
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu)),
      ),
      drawer: NavigationDrawerWidget(),
      body: Center(child: Text(screenName)),
    );
  }
}
