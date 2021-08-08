import 'package:flutter/material.dart';

Widget createDrawer(BuildContext context) {
  var currentRoute = ModalRoute.of(context)!.settings.name;
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Meny',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.volunteer_activism),
          title: Text('KBT'),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/kbt',
            );
          },
          selected: currentRoute == '/kbt',
        ),
        ListTile(
          leading: Icon(Icons.spa),
          title: Text('Mindfulness'),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/mindfulness',
            );
          },
          selected: currentRoute == '/mindfulness',
        ),
        ListTile(
          leading: Icon(Icons.headphones),
          title: Text('Ljudfiler'),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/ljudfiler',
            );
          },
          selected: currentRoute == '/ljudfiler',
        ),
        ListTile(
          leading: Icon(Icons.menu_book),
          title: Text('Litteratur'),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/litteratur',
            );
          },
          selected: currentRoute == '/litteratur',
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Kontakt'),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/kontakt',
            );
          },
          selected: currentRoute == '/kontakt',
        ),
      ],
    ),
  );
}
