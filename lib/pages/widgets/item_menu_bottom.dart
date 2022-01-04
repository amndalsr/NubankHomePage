import 'package:flutter/material.dart';

class ItemMenuBottom extends StatelessWidget {

  final IconData icon;
  final String text;

  const ItemMenuBottom({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 10, horizontal: 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(icon, color: Colors.white,),
              Text(text, style: TextStyle(fontSize: 14, color: Colors.white),),
            ],
          ),
          width: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white24,
          ),
        ),
      ),
    );
  }
}
