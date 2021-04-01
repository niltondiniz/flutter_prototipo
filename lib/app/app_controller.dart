import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

part 'app_controller.g.dart';

@Injectable()
class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  void initOneSignal() {
    OneSignal.shared.init("91064b38-f7c4-4e03-8006-f39e41e6345c");
    OneSignal.shared.setInFocusDisplayType(OSNotificationDisplayType.none);
  }

  @observable
  int value = 0;

  @observable
  Widget currentScreen;

  @action
  void increment() {
    value++;
  }
}
