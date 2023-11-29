import 'package:flutter/material.dart';
import 'package:project_front/core/paletadecores.dart';
import 'package:project_front/presentation/controllers/login_controller.dart';
import 'package:project_front/presentation/views/home_page.dart';
import 'package:project_front/presentation/views/register_page.dart';
import 'package:project_front/repository/user_repository.dart';

import '../widgets/button.dart';
import '../widgets/card_with_title.dart';
import '../widgets/input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller = LoginController(repository: UserRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
      body: Center(
        child: CardWithTitle(
          title: "Login",
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            InputField(
                child: TextField(
              onChanged: (value) => controller.login!.usuario = value,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Informe o usuário",
                  hintStyle: TextStyle(fontStyle: FontStyle.italic)),
            )),
            const SizedBox(
              height: 20,
            ),
            InputField(
                child: TextField(
              onChanged: (value) => controller.login!.senha = value,
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
              title: "Entrar",
              onPressed: () async {
                bool logou = await controller.logar();

                if (!mounted) return;

                if (logou) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                  return;
                }
                return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Poxa!"),
                        content: const Text(
                            "Ocorreu um erro ao tentar logar, por favor tente novamente!"),
                        actions: <Widget>[
                          TextButton(
                            child: const Text("Ok"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    });
              },
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()));
                },
                child: const Text("Não possui conta? Cadastre-se!"))
          ]),
        ),
      ),
    );
  }
}
