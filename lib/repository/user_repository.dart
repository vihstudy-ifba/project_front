import 'package:project_front/core/routes.dart';
import 'package:project_front/models/usuario_model.dart';
import 'package:http/http.dart' as http;

import '../models/login_model.dart';

class UserRepository{
  


  Future<bool?> criarUsuario(UsuarioModel usuarioModel) async {
    try {
      String url = Routes.novousuario;

      var response = await http.post(Uri.parse(url), body: usuarioModel.toJson(), headers: {
        "content-type": "application/json",
        "accept": "application/json",
      });

      if (response.statusCode == 200) return true;

      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool?> logar(LoginModel login) async {
    try {
      String url = Routes.acesso;

      var response = await http.post(Uri.parse(url), body: login.toJson(), headers: {
        "content-type": "application/json",
        "accept": "application/json",
      });

      if (response.statusCode == 200) return true;

      return false;
    } catch (e) {
      return false;
    }
  }

  
}