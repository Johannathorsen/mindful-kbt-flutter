import 'package:flutter/material.dart';
import 'package:mindful_kbt_flutter/views/KBT.dart';
import 'package:mindful_kbt_flutter/views/Mindfulness.dart';
import 'package:mindful_kbt_flutter/views/Litteratur.dart';
import 'package:mindful_kbt_flutter/views/Ljudfiler.dart';
import 'package:mindful_kbt_flutter/views/Kontakt.dart';
import 'package:mindful_kbt_flutter/createDrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => StartPage(title: 'Mindful KBT'),
        KBT.routeName: (context) => KBT(),
        Mindfulness.routeName: (context) => Mindfulness(),
        Ljudfiler.routeName: (context) => Ljudfiler(),
        Litteratur.routeName: (context) => Litteratur(),
        Kontakt.routeName: (context) => Kontakt(),
      },
    );
  }
}

class StartPage extends StatefulWidget {
  StartPage({Key? key, required this.title}) : super(key: key);
  // Fields in a Widget subclass are always marked "final".
  final String title;

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the StartPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: createDrawer(context),
      body: Center(
        child: Column(
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Number of clicks:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
