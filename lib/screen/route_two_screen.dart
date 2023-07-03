import 'package:flutter/material.dart';
import 'package:nagivation/screen/route_three_screen.dart';

import '../layout/main_layout.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;
    return MainLayout(
      title: 'Route Two',
      children: [
        Text(
          'arguments: ${arguments}',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/three', arguments: 999);
          },
          child: Text('Push Named'),
        ),
        // pushReplacement - 기존 screen을 대체하고 자신이 stack에 들어간다.
        // ElevatedButton(
        //   onPressed: () {
        //     Navigator.of(context).pushReplacement(
        //       MaterialPageRoute(
        //         builder: (_) => RouteThreeScreen(),
        //       ),
        //     );
        //   },
        //   child: Text(''),
        // ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/three');
          },
          child: Text(''),
        ),
        // pushAndRemoveUntil
        // false: navigation stack의 원소를 삭제
        // true: 제거 X

        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => RouteThreeScreen()),
                  (route) => route.settings.name == '/');
            },
            child: Text('push/removeuntil'))
      ],
    );
  }
}
