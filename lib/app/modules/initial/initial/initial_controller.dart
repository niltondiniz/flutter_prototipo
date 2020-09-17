import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'initial_controller.g.dart';

@Injectable()
class InitialController = _InitialControllerBase with _$InitialController;

abstract class _InitialControllerBase with Store {
  @observable
  int value = 0;

  @observable
  List<Widget> widgetsInital = [
    Image.network(
        'https://cassol.ciaimg.com.br/Assets/Produtos/SuperZoom/51546-1.jpeg?v=a4039b59-1')
  ];

  @action
  void increment() {
    value++;
  }
}
