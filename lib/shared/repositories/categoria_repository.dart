import 'package:vig_prot/shared/models/categoria_model.dart';
import 'package:vig_prot/shared/models/servico_model.dart';
import 'package:vig_prot/shared/repositories/servico_repository.dart';

class CategoriaRepository {
  List<CategoriaModel> getAllCategorias() {
    List<CategoriaModel> list = List<CategoriaModel>();
    List<ServicoModel> servicos = ServicoRepository().getAllServices();

    list.add(
        CategoriaModel(nomeCategoria: "NomeCategoria", servicos: servicos));

    return list;
  }
}
