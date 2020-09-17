import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vig_prot/app/modules/initial/initial/initial_controller.dart';
import 'package:vig_prot/shared/models/categoria_model.dart';
import 'package:vig_prot/shared/models/servico_model.dart';
import 'package:vig_prot/shared/repositories/categoria_repository.dart';
import 'package:vig_prot/shared/utils/constants.dart';

class Lista1 extends StatefulWidget {
  final String titulo;

  const Lista1(String s, {Key key, this.titulo}) : super(key: key);

  @override
  _Lista1State createState() => _Lista1State();
}

class _Lista1State extends ModularState<Lista1, InitialController> {
  List<CategoriaModel> listCategoria = CategoriaRepository().getAllCategorias();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.titulo,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color_4,
            fontSize: 17,
          ),
        ),
        Container(
          height: 190,
          child: ListView.builder(
            itemCount: listCategoria[0].servicos.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                margin: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  right: 10,
                  left: 1,
                ),
                elevation: 2,
                child: Container(
                  width: 150,
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Container(
                          color: Colors.black12,
                          height: 110,
                          width: double.infinity,
                          child: Image.network(
                            listCategoria[0].servicos[index].urlImagem,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: Center(
                            child: Text(
                              listCategoria[0].servicos[index].nomeServico,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'R\$ ' +
                                listCategoria[0]
                                    .servicos[index]
                                    .valorServico
                                    .toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
