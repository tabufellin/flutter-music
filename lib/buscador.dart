import 'package:flutter/material.dart';

class Buscador extends StatelessWidget {

  String lookingFor = "song";
  Buscador(this.lookingFor);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          //header
          Container(
            child: Text(
                lookingFor,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40.0,
                    decoration: TextDecoration.none
                )
            ),
            height: 100.0,
            width: 500,
            margin: EdgeInsets.only(
                top: 50,
                left: 20
            ),
          ),
          // search TextField
          Container (
          child: new Container(
          child: new Center(
          child: new Column(
          children : [
          new Padding(padding: EdgeInsets.only(top: 20.0)),
          new TextFormField(
          decoration: new InputDecoration(
            labelText: "tu busqueda",
            fillColor: Colors.white,
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(25.0),
              borderSide: new BorderSide(

              ),
    ),
    //fillColor: Colors.green
    ),
    validator: (val) {
    if(val.length==0) {
    return "Email cannot be empty";
    }else{
    return null;
    }
    },
    keyboardType: TextInputType.emailAddress,
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

      ),

    );
  }

}