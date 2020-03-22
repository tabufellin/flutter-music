import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'buscador.dart';
import 'circle_button.dart';
class ElementAction extends StatelessWidget {
  String text = "Canción";
  IconData icon = Icons.add;
  List<String> actions = ["/song", "/album", "/artist"];
  int kindAction = 0;
  String heroTagStr = "btn";

  ElementAction(this.icon, this.text, this.kindAction);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Row(
        children: <Widget>[
          Container(
              child: CircleButton(false, icon, 20.0, Color.fromRGBO(255, 255, 255, 0.6),
                      ()=> {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Buscador("Buscar " + text.toLowerCase())
                      ))
              }),
            padding: EdgeInsets.all(20.0)
          ),

          Container(
            child: Text(
                text,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  decoration: TextDecoration.none
              ),
            ),

    ),

        ],

      ),

    );


  }

}