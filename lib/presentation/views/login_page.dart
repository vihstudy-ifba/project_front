import 'package:flutter/material.dart';
import 'package:project_front/core/paletadecores.dart';
import 'package:project_front/presentation/views/register_page.dart';

import '../widgets/button.dart';
import '../widgets/card_with_title.dart';
import '../widgets/input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              hint: "Informe o usuario",
              onChanged: (value) => value,
            ),
            const SizedBox(
              height: 20,
            ),
            InputField(
              hint: "Informe a senha",
              onChanged: (value) => value,
            ),
            const SizedBox(
              height: 30,
            ),
            Button(
              title: "Entrar",
              onPressed: (){},
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


