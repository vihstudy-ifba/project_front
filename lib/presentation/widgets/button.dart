import 'package:flutter/material.dart';

import '../../core/paletadecores.dart';

class Button extends StatelessWidget {
  const Button({
    super.key, required this.title, required this.onPressed,
  });

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPressed as Function(),
      child: Container(
        width: size.width,
        height: size.height * 0.065,
        decoration: BoxDecoration(
            color: PaletaDeCores.button,
            borderRadius: BorderRadius.circular(8)),
        child:  Center(
            child: Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins",
              color: PaletaDeCores.card),
        )),
      ),
    );
  }
}