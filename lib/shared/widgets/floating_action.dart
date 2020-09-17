import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vig_prot/app/modules/home/home_controller.dart';
import 'package:vig_prot/shared/utils/constants.dart';

class FloatingActionButtonApp extends StatefulWidget {
  const FloatingActionButtonApp({
    Key key,
  }) : super(key: key);

  @override
  _FloatingActionButtonAppState createState() =>
      _FloatingActionButtonAppState();
}

class _FloatingActionButtonAppState extends State<FloatingActionButtonApp> {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Modular.get();

    return SizedBox(
      height: 70,
      width: 70,
      child: FloatingActionButton(
        child: Icon(
          Icons.search_outlined,
          size: 50,
        ),
        onPressed: homeController.getBatteryLevel,
        backgroundColor: color_1,
        mini: false,
      ),
    );
  }
}
