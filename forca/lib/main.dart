import 'package:flutter/material.dart';
import 'package:forca/screens/forca.dart';
import 'package:forca/services/forca_services.dart';
import 'package:provider/provider.dart';

void main() {
  
  runApp(
    ChangeNotifierProvider<ForcaServices>(
      create: (_) => ForcaServices(),
      child:const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
      home:  ForcaGame(),
    );
  }
}

