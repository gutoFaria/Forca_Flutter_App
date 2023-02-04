import 'package:flutter/material.dart';
import 'package:forca/utils/util.dart';
import 'package:provider/provider.dart';

import '../services/forca_services.dart';

class ImageForca extends StatelessWidget {
  const ImageForca({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ForcaServices>(context);
    return Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 170,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 4,
                  blurRadius: 4,
                  offset: const Offset(0, 2)
                ),
            ],
          ),
        child: Image.asset(
          selectImage[provider.erro]
        ),
          
        );
  }
}
