import 'package:flutter/material.dart';
import 'dart:math';

import 'package:forca/utils/util.dart';

class ForcaServices extends ChangeNotifier{

  String palavra = listFruits[Random().nextInt(listFruits.length)];
  List getAlfabeto = [];
  int erro = 0;
  List images = selectImage;
  bool venceu = true;
  
  get context => null; 

  String handleText(){
    String displayPalavra = "";
    for(int i = 0; i < palavra.length;i++){
      String c = palavra[i];
      if(getAlfabeto.contains(c)){
        displayPalavra += "$c ";
      }else{
        displayPalavra +="? ";
      }
    }
    return displayPalavra;
  }

  void checarLetra(String letra){
    if(palavra.contains(letra)){
      getAlfabeto.add(letra);
    }else if(erro != 6){
      erro +=1;
    }else if(erro == 6){
      print('você perdeu');
      //openDialog("Você perdeu!");
    }

    
    for(int i = 0; i < palavra.length;i++){
      String c = palavra[i];
      if(!getAlfabeto.contains(c)){
       venceu = false;
       break;
      }
    }
   
    notifyListeners();
  }

  openDialog(String title){
    return showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width/2,
            height: 180,
            decoration: 
              const BoxDecoration(
                color: Colors.purpleAccent,
              ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: textStyle(25,Colors.white,FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: const EdgeInsets.only(top:20),
                  width: MediaQuery.of(context).size.width /2,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                      erro =0;
                      getAlfabeto.clear();
                      palavra = listFruits[Random().nextInt(listFruits.length)];
                    },
                    child: Center(
                      child: 
                        Text('Jogar Novamente',
                          style: textStyle(20,Colors.black,FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }
    );
  
  }
  
}