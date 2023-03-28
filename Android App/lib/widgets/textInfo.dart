import 'package:flutter/material.dart';

class textInfo extends StatelessWidget {
  final String text;
  final IconData givenIcon;
  const textInfo({required this.text,required this.givenIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(givenIcon,
          color: Colors.green),
          const SizedBox(width: 10,),
          Text(text,
          style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
          ),),
        ],
      ),
    );
  }
}