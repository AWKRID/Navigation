import 'package:flutter/material.dart';
import 'package:nagivation/layout/main_layout.dart';
import 'package:nagivation/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'HomeScreen',
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (BuildContext context) => RouteOneScreen()),
            );
          },
          child: Text('Push'),
        )
      ],
    );
  }
}
