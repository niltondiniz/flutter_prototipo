import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vig_prot/shared/widgets/lista_1.dart';
import 'initial_controller.dart';

class InitialPage extends StatefulWidget {
  final String title;
  const InitialPage({Key key, this.title = "Initial"}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends ModularState<InitialPage, InitialController> {
  //use 'controller' variable to access controller

  @protected
  @mustCallSuper
  void initState() {
    super.initState();
    controller.widgetsInital = [
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Image.network(
          'https://gorilaclube.vteximg.com.br/arquivos/ids/176950-292-292/Almofada-cerveja-duff-beer-quadrada-alm194.jpg?v=635858950754970000',
          height: 100,
        ),
      ),
      Lista1("", titulo: "Favoritos"),
      Lista1("", titulo: "Teste"),
      Lista1("", titulo: 'Mais Solicitados'),
      Lista1("", titulo: 'Chegando'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Container(
            height: MediaQuery.of(context).size.height - (210 - 60),
            child: ListView.builder(
              itemCount: controller.widgetsInital.length,
              itemBuilder: (BuildContext context, int index) {
                return controller.widgetsInital[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
