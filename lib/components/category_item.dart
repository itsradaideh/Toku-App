import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({Key? key, /*this.color,*/this.text,this.onTap}) : super(key: key);

   String? text;
  //  Color? color;
   VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
              margin: const EdgeInsets.only(left: 8, right: 8, top: 8),
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.deepPurpleAccent),
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              alignment: Alignment.center,
              height: 85,
              width: double.infinity,
              // color: color,

              child: Text(text!,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.deepPurple,
                fontSize: 18,
              ),
              ),
              ),
    );
  }
}