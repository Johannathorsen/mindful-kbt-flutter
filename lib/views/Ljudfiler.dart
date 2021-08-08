import 'package:flutter/material.dart';
import 'package:mindful_kbt_flutter/createDrawer.dart';

class Ljudfiler extends StatelessWidget {
  static const String routeName = '/ljudfiler';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: createDrawer(context),
      body: Center(
        child: TextButton(
          child: Text('Ljudfiler!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
