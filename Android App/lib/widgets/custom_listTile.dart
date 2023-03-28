import 'dart:math';

import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final double cost;
  final String date;
  bool isApproved;

  CustomListTile(
      {required this.icon,
      required this.title,
      required this.cost,
      required this.date,
      required this.isApproved});

  //list of random colors
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.orange,
    Colors.yellow,
    Colors.pink,
    Colors.teal,
    Colors.indigo,
    Colors.cyan,
    Colors.lime,
    Colors.brown,
    Colors.amber,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.lightGreen,
    Colors.grey,
  ];
  final _random = new Random();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isApproved?Colors.greenAccent:Colors.redAccent,
      elevation: 3,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: ListTile(
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                strokeAlign: BorderSide.strokeAlignInside,
                color: colors[_random.nextInt(colors.length)],
                width: 2,
              )),
          child: Icon(
            Icons.add_shopping_cart,
            color: colors[_random.nextInt(colors.length)],
          ),
        ),
        title: Text(title,
            style: TextStyle(
              fontSize: 16,
              color: isApproved?Colors.black:Colors.white,
            )),
        trailing: Text(
          '${cost.toStringAsFixed(2)}',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
