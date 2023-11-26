import 'package:flutter/material.dart';
import 'package:project_front/presentation/widgets/card_with_title.dart';
import 'package:project_front/presentation/widgets/input_field.dart';

import '../../core/paletadecores.dart';
import '../widgets/button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                    hint: "Informe o nome",
                    onChanged: (value) => value,
                  ),
                  const SizedBox(
                    height: 20,
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
                    title: "Salvar",
                    onPressed: () {},
                  ),
                ],
              ))),
    );
  }
}
