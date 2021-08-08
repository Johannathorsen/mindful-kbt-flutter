import 'package:flutter/material.dart';
import 'package:mindful_kbt_flutter/createDrawer.dart';

class Mindfulness extends StatelessWidget {
  static const String routeName = '/mindfulness';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: createDrawer(context),
      body: Center(
        child: TextButton(
          child: Text('Mindfulness!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
