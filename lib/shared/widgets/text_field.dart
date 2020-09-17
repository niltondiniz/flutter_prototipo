import 'package:flutter/material.dart';
import 'package:vig_prot/shared/utils/constants.dart';

class TextFieldApp extends StatefulWidget {
  @override
  _TextFieldAppState createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 200,
      child: TextField(
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontFamily: 'Roboto',
        ),
        decoration: InputDecoration(
          hintText: 'O que você busca?',
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: color_1),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: color_1),
          ),
        ),
      ),
    );
  }
}
