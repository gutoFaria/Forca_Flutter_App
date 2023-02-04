import 'package:flutter/material.dart';
import 'package:forca/services/forca_services.dart';
import 'package:provider/provider.dart';

import '../utils/util.dart';

class Alfabeto extends StatelessWidget {
  const Alfabeto({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ForcaServices>(context);
    return Container(
      width: 400,
      height: 200,
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
        crossAxisCount: 9,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: letras.map((letra) {
          return InkWell(
            onTap: ()=> provider.checarLetra(letra),
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  letra,
                  style: textStyle(20, Colors.black, FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
