import 'package:flutter/material.dart';

class CenterColumn extends StatelessWidget {
  CenterColumn({required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Column(children: this.children)),
        ],
      ),
    );
  }
}
