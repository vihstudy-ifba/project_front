import 'package:flutter/material.dart';
import 'package:project_front/presentation/widgets/card_with_title.dart';

import '../../core/paletadecores.dart';

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
                children: [Container()],
              ))),
    );
  }
}
