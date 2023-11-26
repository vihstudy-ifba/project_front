import 'package:flutter/material.dart';

import '../../core/paletadecores.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key, required this.hint, required this.onChanged,
  });

  final String hint;
  final Function onChanged;

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
          child: TextField(
            onChanged: onChanged as Function(String), 
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              hintStyle: const TextStyle(
                fontStyle: FontStyle.italic
              )),
          ),
        ),
      ),
    );
  }
}
