import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.purple,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(
              height: 40,
            ),
            builMenuItem(
                title: 'Screen 1',
                icon: Icons.people,
                onTapped: () {
                  selectedItemNumber(context, 0);
                }),
            builMenuItem(title: 'Screen 2', icon: Icons.people),
            builMenuItem(title: 'Screen 3', icon: Icons.people)
          ],
        ),
      ),
    );
  }

  void selectedItemNumber(BuildContext context, int index) {
    switch (index) {
      case 0:
        showDialog(
            context: context,
            builder: (_) {
              return Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: ElevatedButton(
                    child: Text('Tap'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            });
        break;
    }
  }

  Widget builMenuItem({
    required String title,
    required IconData icon,
    VoidCallback? onTapped,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onTap: onTapped,
    );
  }
}
