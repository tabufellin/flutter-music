import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'element_action.dart';


// ignore: must_be_immutable
class DoSomething extends StatelessWidget {

  String headerText = "Agregar";
  IconData icon = Icons.add;
  List<String> words = ["Canción", "Album", "Artista" ];


  DoSomething (this.headerText, this.icon, this.words);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [ Color.fromRGBO(168, 211, 218, 1), Color.fromRGBO(181, 144, 202, 1)])),
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
                headerText,
                style: TextStyle(
                color: Colors.black87,
                fontSize: 50.0,
                    decoration: TextDecoration.none
                )
              ),
              height: 100.0,
              width: 500,
            margin: EdgeInsets.only(
              top: 30,
              left: 20
            ),
          ),
          ElementAction(icon, words[0], 0),
          ElementAction(icon, words[1], 1),
          ElementAction(icon, words[2], 2),
        ],

      ),
      //color: Colors.white,

    );



  }





}