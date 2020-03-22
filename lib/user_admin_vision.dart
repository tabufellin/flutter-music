import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'buscador.dart';
import 'circle_button.dart';
class UserAdminVision extends StatelessWidget {
  String username = "pepetrueno";
  IconData icon = Icons.add;
  Widget editAdminVision = Buscador("buscar");
  UserAdminVision(this.icon, this.username, this.editAdminVision);

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
                        MaterialPageRoute(builder: (context) => editAdminVision)
                    )
                  }),
              padding: EdgeInsets.all(20.0)
          ),

          Container(
            child: Text(
              username,
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