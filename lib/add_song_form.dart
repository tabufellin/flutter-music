import 'package:flutter/material.dart';



class AddSongForm extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddSongForm();
  }

}

class _AddSongForm extends State<AddSongForm> {
  final formKey = GlobalKey<FormState>();
  String _name, _album, _gender, _pricePerUnit;

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
                  labelText: 'nombre:',

                ),
                onSaved: (input) => _name = input,
              ),
              TextFormField(
                  decoration: InputDecoration(
                      labelText: 'album:'
                  ),
                  onSaved: (input) => _album = input
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'genero:',

                ),
                onSaved: (input) => _gender = input,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'precio por unidad:',

                ),
                onSaved: (input) => _pricePerUnit = input,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      onPressed: _submit,
                      child: Text('Crear canción'),
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
    print(_album);
    print(_gender);
    print(_pricePerUnit);
    // To go back in the screen auto
    Navigator.pop(context);
  }
}
