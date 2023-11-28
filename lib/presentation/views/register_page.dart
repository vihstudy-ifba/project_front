import 'package:flutter/material.dart';
import 'package:project_front/presentation/widgets/card_with_title.dart';
import 'package:project_front/presentation/widgets/input_field.dart';

import '../../core/paletadecores.dart';
import '../../repository/user_repository.dart';
import '../controllers/register_controller.dart';
import '../widgets/button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegisterController controller =
      RegisterController(repository: UserRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
      body: Center(
          child: CardWithTitle(
              title: "Cadastro",
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  InputField(
                      child: TextField(
                    onChanged: (value) => controller.usuario!.nome = value,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Informe o nome do usuário",
                        hintStyle: TextStyle(fontStyle: FontStyle.italic)),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  InputField(
                      child: TextField(
                    onChanged: (value) => controller.usuario!.usuario = value,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Informe o usuario",
                        hintStyle: TextStyle(fontStyle: FontStyle.italic)),
                  )),
                  const SizedBox(
                    height: 20,
                  ),  
                  InputField(
                      child: TextField(
                    onChanged: (value) => controller.usuario!.senha = value,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Informe a senha",
                        hintStyle: TextStyle(fontStyle: FontStyle.italic)),
                  )),
                  const SizedBox(
                    height: 30,
                  ),
                  Button(
                    title: "Salvar",
                    onPressed: () async {
                      await controller.cadastrarUsuario();
                    },
                  ),
                ],
              ))),
    );
  }
}
