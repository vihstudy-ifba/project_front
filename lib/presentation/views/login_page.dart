import 'package:flutter/material.dart';
import 'package:project_front/core/paletadecores.dart';

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PaletaDeCores.background,
      body: Center(
        child: CardWithTitle(
          title: "Login",
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            const InputField(),
            const SizedBox(
              height: 20,
            ),
            const InputField(),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: size.width,
              height: size.height * 0.06,
              decoration: BoxDecoration(
                  color: PaletaDeCores.button,
                  borderRadius: BorderRadius.circular(8)),
              child: const Center(child: Text("Entrar")),
            ),
            const SizedBox(
              height: 30,
            ),
          ]),
        ),
      ),
    );
  }
}
