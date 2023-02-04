import 'package:flutter/material.dart';

import 'package:forca/utils/util.dart';
import 'package:forca/widgets/alfabeto.dart';
import 'package:forca/widgets/image_forca.dart';
import 'package:forca/widgets/palavra.dart';

class ForcaGame extends StatelessWidget {
  const ForcaGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          "JOGO DA FORCA",
          style: textStyle(25, Colors.white, FontWeight.bold),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: const [
            SizedBox(
              height: 40,
            ),
            ImageForca(),
            SizedBox(
              height: 40,
            ),
            Palavra(),
            SizedBox(
              height: 40,
            ),
            Alfabeto(),
          ],
        ),
      ),
    );
  }
}
