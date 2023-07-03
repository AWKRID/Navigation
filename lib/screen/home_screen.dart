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
          onPressed: () async {
            final result = await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => RouteOneScreen(
                  number: 123,
                ),
              ),
            );
          },
          child: Text('Push'),
        )
      ],
    );
  }
}
