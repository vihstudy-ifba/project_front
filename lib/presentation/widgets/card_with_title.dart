import 'package:flutter/material.dart';

import '../../core/paletadecores.dart';

class CardWithTitle extends StatelessWidget {
  const CardWithTitle({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(10),
      width: size.width,
      decoration: BoxDecoration(
          color: PaletaDeCores.card, borderRadius: BorderRadius.circular(10)),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Text(
              title,
              style: const TextStyle(
                  fontFamily: 'Leckerli One',
                  fontSize: 26,
                  color: PaletaDeCores.title),
            ),
            child
          ]),
        ),
      ),
    );
  }
}
