import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterapp/add_artist_form.dart';
import 'package:flutterapp/add_song_form.dart';
import 'package:flutterapp/buscador.dart';
import 'package:flutterapp/do_something.dart';
import 'add_album_form.dart';
import 'users_admin_vision.dart';
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
                  initialRoute: '/search',
                  routes: {
                    '/': (BuildContext context) => DoSomething("Buscar", Icons.search, ["Canción", "Album", "Artista"], [Buscador("Buscar cancion"), Buscador("Buscar album"), Buscador("Buscar artista")]),
                    '/search/song': (BuildContext context) => Buscador("Buscar canción"),
                    '/search/album': (BuildContext context) => Buscador("Buscar album"),
                    '/search/artist': (BuildContext context) => Buscador("Buscar artista"),
                  },
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ));
            case 1:
              return MaterialApp(
                  title: 'Add',
                  initialRoute: '/',
                  routes: {
                    '/': (BuildContext context) => DoSomething("Agregar", Icons.add, ["Canción", "Album", "Artista"], [AddSongForm(), AddAlbumForm(), AddArtistForm() ]),
                    '/add/song': (BuildContext context) => Buscador("Buscar canción"),
                    '/add/album': (BuildContext context) => AddAlbumForm(),
                    '/add/artist': (BuildContext context) => Buscador("Buscar artista"),
                  },
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ));
            case 2:
              return MaterialApp(
                  title: 'users',
                  initialRoute: '/',
                  routes: {
                    '/': (BuildContext context) => UsersAdminVision()
                  },
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ));

          }
        },
      ),
    );
  }

}