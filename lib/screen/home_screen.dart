import 'package:flutter/material.dart';
import 'package:nagivation/layout/main_layout.dart';
import 'package:nagivation/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        //true - pop 가능
        //false - pop 불가능
        final canPop = Navigator.of(context).canPop();
        return canPop;
      },
      child: MainLayout(
        title: 'HomeScreen',
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            child: Text('maybePop'),
          ),
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
      ),
    );
  }
}
