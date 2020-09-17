import 'package:vig_prot/shared/models/servico_model.dart';

class ServicoRepository {
  List<ServicoModel> getAllServices() {
    List<ServicoModel> listServicoModel;

    listServicoModel = List<ServicoModel>();

    listServicoModel.add(ServicoModel(
        nomeServico: "Almofada Adest",
        urlImagem:
            "https://799028l.ha.azioncdn.net/img/2020/08/produto/18540/1/home/almofada-abstrata-45-x-45-multcolors-imp2020-1.png",
        valorServico: 10.99));

    listServicoModel.add(ServicoModel(
        nomeServico: "Almofada Altiva",
        urlImagem:
            "https://799028l.ha.azioncdn.net/img/2020/08/produto/18575/1/home/almofada-geometrica-45-x-45-preto-imp2025-1.png",
        valorServico: 13.99));

    listServicoModel.add(ServicoModel(
        nomeServico: "Almofada Fader",
        urlImagem:
            "https://799028l.ha.azioncdn.net/img/2020/08/produto/18617/1/home/almofada-folhas-45-x-45-bege-imp2033-1.png",
        valorServico: 10.99));

    listServicoModel.add(ServicoModel(
        nomeServico: "Almofada Carteg",
        urlImagem:
            "https://799028l.ha.azioncdn.net/img/2020/08/produto/18648/1/home/almofada-nautica-branca-45x45-imp2007-1.jpg",
        valorServico: 15.99));

    return listServicoModel;
  }
}
