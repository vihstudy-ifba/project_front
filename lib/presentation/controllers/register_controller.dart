// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:project_front/models/usuario_model.dart';
import 'package:project_front/repository/user_repository.dart';

class RegisterController {
  UserRepository repository;

  UsuarioModel? usuario = UsuarioModel();

  RegisterController({
    required this.repository,
  });

  Future cadastrarUsuario() async {
    try {
      usuario!.id = 0;
      await repository.criarUsuario(usuario!);
    } catch (e) {
      rethrow;
    }
  }

}
