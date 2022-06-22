import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key, required this.screenName}) : super(key: key);
  final  String screenName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(screenName)),
      body: Center(child: Text(screenName)),
    );
    
  }
}