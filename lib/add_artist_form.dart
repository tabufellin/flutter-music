import 'package:flutter/material.dart';

class AddArtistForm extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddArtistForm();
  }

}

class _AddArtistForm extends State<AddArtistForm> {
  final formKey = GlobalKey<FormState>();
  String _name;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      margin: EdgeInsets.only(
          top: 20
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Nombre Artistico:'
                ),
                onSaved: (input) => _name = input,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      onPressed: _submit,
                      child: Text('Crear Artista'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _submit(){
    //save the data
    formKey.currentState.save();


    // here add the DATABASE process
    print(_name);


    // To go back in the screen auto
    Navigator.pop(context);

  }
}

