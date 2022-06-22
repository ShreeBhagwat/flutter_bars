import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key, required this.screenName}) : super(key: key);
  final String screenName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            expandedHeight: 200,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Settings App Bar'),
            ),
          ),
          SliverToBoxAdapter(
            child: GridView.builder(
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.red,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
