import 'package:flutter/material.dart';
import 'package:mindful_kbt_flutter/createDrawer.dart';

class Kontakt extends StatelessWidget {
  static const String routeName = '/kontakt';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: createDrawer(context),
      body: Center(
        child: TextButton(
          child: Text('Kontakt!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
