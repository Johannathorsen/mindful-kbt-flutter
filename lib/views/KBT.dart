import 'package:flutter/material.dart';
import 'package:mindful_kbt_flutter/createAppBar.dart';
import 'package:mindful_kbt_flutter/createDrawer.dart';

class KBT extends StatelessWidget {
  static const String routeName = '/kbt';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(),
      drawer: createDrawer(context),
      body: Center(
        child: TextButton(
          child: Text('KBT!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
