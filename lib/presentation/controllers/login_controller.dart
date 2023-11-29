import 'package:project_front/models/login_model.dart';
import '../../repository/user_repository.dart';

class LoginController{
  UserRepository repository;

  LoginModel? login = LoginModel();

  LoginController({required this.repository});

  Future logar() async {
    try {
      return await repository.logar(login!);
    } catch (e) {
      rethrow;
    }
  }
}