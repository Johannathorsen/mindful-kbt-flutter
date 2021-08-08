import 'package:flutter/material.dart';
import 'package:mindful_kbt_flutter/createAppBar.dart';
import 'package:mindful_kbt_flutter/createDrawer.dart';
import 'package:mindful_kbt_flutter/CenterColumn.dart';

class Start extends StatelessWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(),
      drawer: createDrawer(context),
      body: CenterColumn(
        children: [
          Image(
            image: AssetImage('assets/lena.jpeg'),
          ),
          Text(
            'Hej och välkommen!',
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
              'Jag som ligger bakom den här sidan heter Lena Thorsen och är leg psykoterapeut (KBT) samt mindfulnessinstruktör (MBSR). Här kan du hitta information om KBT och mindfulness, inklusive ljudfiler som du kan träna mindfulness med hjälp utav.',
              style: Theme.of(context).textTheme.bodyText2)
        ],
      ),
    );
  }
}
