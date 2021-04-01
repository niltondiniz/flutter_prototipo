import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vig_prot/app/modules/initial/initial/initial_page.dart';
import 'package:vig_prot/shared/utils/constants.dart';
import 'package:vig_prot/shared/widgets/app_bar_clip.dart';
import 'package:vig_prot/shared/widgets/bottom_navigation.dart';
import 'package:vig_prot/shared/widgets/center_vazio.dart';
import 'package:vig_prot/shared/widgets/floating_action.dart';
import '../../app_controller.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  static const platform = const MethodChannel('samples.flutter.dev/battery');
  String _batteryLevel = 'Unknown battery level.';

  AppController appController = Modular.get();

  @override
  void initState() {
    appController.initOneSignal();
    super.initState();
    appController.currentScreen = InitialPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        child: Stack(
          children: [
            //SizedBox(height: 90),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: appController.currentScreen != null
                  ? appController.currentScreen
                  : CenterVazio(),
            ),
            AppBarClip(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButtonApp(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationApp(),
    );
  }
}
