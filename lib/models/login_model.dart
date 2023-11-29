import 'dart:convert';

class LoginModel {
  String? usuario;
  String? senha;

  LoginModel({this.usuario, this.senha});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usuario': usuario,
      'senha': senha,
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      usuario: map['usuario'] != null ? map['usuario'] as String : null,
      senha: map['senha'] != null ? map['senha'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModel.fromJson(String source) =>
      LoginModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
