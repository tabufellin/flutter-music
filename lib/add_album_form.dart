import 'package:flutter/material.dart';



class AddAlbumForm extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddAlbumForm();
  }

}

class _AddAlbumForm extends State<AddAlbumForm> {
  final formKey = GlobalKey<FormState>();
  String _title, _artist;

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
                    labelText: 'titulo:',

                ),
                onSaved: (input) => _title = input,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'artista:'
                ),
                onSaved: (input) => _artist = input
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      onPressed: _submit,
                      child: Text('Crear Album'),
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
      print(_title);
      print(_artist);

      // To go back in the screen auto
      Navigator.pop(context);
  }
}








