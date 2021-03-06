import 'package:vig_prot/app/app_controller.dart';
import 'package:vig_prot/shared/repositories/categoria_repository.dart';
import 'package:vig_prot/shared/repositories/servico_repository.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $HomeController,
        $AppController,
        Bind((i) => CategoriaRepository()),
        Bind((i) => ServicoRepository()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
