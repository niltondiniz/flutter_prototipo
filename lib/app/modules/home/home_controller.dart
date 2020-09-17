import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  static const platform = const MethodChannel('samples.flutter.dev/battery');

  @observable
  String batteryLevel = 'Unknown battery level.';

  @observable
  int value = 0;

  @action
  Future<void> getBatteryLevel() async {
    String batteryLevelLocal;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevelLocal = 'Bateria $result %';
    } on PlatformException catch (e) {
      batteryLevelLocal = "Failed to get battery level: '${e.message}'.";
    }

    batteryLevel = batteryLevelLocal;
  }

  @action
  void increment() {
    value++;
  }
}
