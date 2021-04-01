import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vig_prot/app/modules/home/home_controller.dart';
import 'package:vig_prot/shared/utils/constants.dart';
import 'package:vig_prot/shared/widgets/text_field.dart';

class AppBarClip extends StatefulWidget {
  const AppBarClip({Key key}) : super(key: key);
  @override
  _AppBarClipState createState() => _AppBarClipState();
}

class _AppBarClipState extends ModularState<AppBarClip, HomeController> {
  HomeController homeController = Modular.get();

  @override
  Widget build(BuildContext context) {
    return ClipShadow(
      boxShadow: [
        BoxShadow(
            //color: Colors.black26,
            //blurRadius: 5,
            //spreadRadius: 5,
            )
      ],
      clipper: ClipperAppBar(),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.16,
        width: double.infinity,
        color: color_4,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextFieldApp(),
                ),
                Icon(
                  Icons.place,
                  color: color_1,
                ),
                /*Observer(
                  builder: (_) => Text(
                    homeController.batteryLevel,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),*/
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ClipperAppBar extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 40);
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 2, size.height + 40, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return oldClipper != this;
  }
}
