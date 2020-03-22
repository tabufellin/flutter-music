import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp/buscador.dart';
import 'package:flutterapp/do_something.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.indigo,),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add, color: Colors.indigo,),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.indigo,),
                title: Text("")
            ),
          ],
        ),
        // ignore: missing_return
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return MaterialApp(
                  title: 'Search',
                  initialRoute: '/',
                  routes: {
                    '/': (BuildContext context) => DoSomething("Buscar", Icons.search, ["Canción", "Album", "Artista"]),
                    '/song': (BuildContext context) => Buscador("Buscar canción"),
                    '/album': (BuildContext context) => Buscador("Buscar album"),
                    '/artist': (BuildContext context) => Buscador("Buscar artista"),
                  },
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ));
            case 1:
              return MaterialApp(
                  title: 'Add',
                  initialRoute: '/',
                  routes: {
                    '/': (BuildContext context) => DoSomething("Agregar", Icons.add, ["Canción", "Album", "Artista"]),
                    '/add/song': (BuildContext context) => Buscador("Buscar canción"),
                    '/add/album': (BuildContext context) => Buscador("Buscar album"),
                    '/add/artist': (BuildContext context) => Buscador("Buscar artista"),
                  },
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ));
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => DoSomething("Usuarios", Icons.add, ["Canción", "Album", "Artista"]),
              );
              break;

          }
        },
      ),
    );
  }

}