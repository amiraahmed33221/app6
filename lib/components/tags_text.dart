import 'package:flutter/material.dart';

class TagsText extends StatelessWidget {

  final String textValue;
  TagsText({required this.textValue});

  @override
  Widget build(BuildContext context) {
    return Text(
      textValue.toUpperCase(),
      style: const TextStyle(
        color:Color(0xff345051),
        // fontSize: 20,
        // fontWeight: FontWeight.w900,

      ),
    );
  }
}