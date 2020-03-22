import 'package:flutter/material.dart';
import 'user_admin_vision.dart';
import 'add_song_form.dart';
class UsersAdminVision extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 60,
            bottom: 40
          ),
          child: ListView(
            children: <Widget>[
              UserAdminVision(Icons.edit, "pepetrueno", AddSongForm()),
              UserAdminVision(Icons.edit, "caca92", AddSongForm()),
              UserAdminVision(Icons.edit, "hechele", AddSongForm()),
              UserAdminVision(Icons.edit, "aaaaaAAAA", AddSongForm()),
              UserAdminVision(Icons.edit, "Rankiemsosss", AddSongForm()),
              UserAdminVision(Icons.edit, "jueputaaaa", AddSongForm()),
              UserAdminVision(Icons.edit, "jklj", AddSongForm()),
              UserAdminVision(Icons.edit, "pepetrueno", AddSongForm()),
              UserAdminVision(Icons.edit, "jj pepe 2", AddSongForm()),
            ],

          ),
        ),
        Container (
          margin: EdgeInsets.only(
            top: 20
          ),
          child: new Container(
            child: new Center(
                child: new Column(

                    children : [
                      new Padding(padding: EdgeInsets.only(top: 20.0)),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "busca por username ",
                          fillColor: Colors.black26,
                          filled: true,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ), //fillColor: Colors.green
                        ),
                        validator: (val) {
                          if(val.length==0) {
                            return "cannot be empty";
                          }else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.text,
                        style: new TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ]
                )
            ),
          )
      )


    ],

    );



  }

}