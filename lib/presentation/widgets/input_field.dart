import 'package:flutter/material.dart';

import '../../core/paletadecores.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.065,
      decoration: BoxDecoration(
          color: PaletaDeCores.backgroundinput,
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Center(
          child: child
        ),
      ),
    );
  }
}
