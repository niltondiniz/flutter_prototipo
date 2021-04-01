import 'package:flutter/material.dart';

class CenterVazio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: MediaQuery.of(context).size.height - (210 - 60),
      child: Center(
        child: Text('Vazio'),
      ),
    );
  }
}
