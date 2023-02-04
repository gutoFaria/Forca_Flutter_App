import 'package:flutter/material.dart';
import 'package:forca/utils/util.dart';
import 'package:provider/provider.dart';

import '../services/forca_services.dart';

class Palavra extends StatelessWidget {
  const Palavra({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ForcaServices>(context);
    return Text(
      provider.handleText(),
      style: textStyle(25, Colors.white, FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
