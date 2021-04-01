import 'package:vig_prot/shared/repositories/categoria_repository.dart';
import 'package:vig_prot/shared/repositories/servico_repository.dart';

import 'modules/initial/initial/initial_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:vig_prot/app/app_widget.dart';
import 'package:vig_prot/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $InitialController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
