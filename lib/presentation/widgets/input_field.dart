import 'package:flutter/material.dart';

import '../../core/paletadecores.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.06,
      decoration: BoxDecoration(
          color: PaletaDeCores.backgroundinput,
          borderRadius: BorderRadius.circular(8)),
      child: const Center(
        child: TextField(
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}
