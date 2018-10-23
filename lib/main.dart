import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: EsScaffold(title: 'Flutter En Español'),
    );
  }
}

class EsScaffold extends StatefulWidget {
  EsScaffold({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _EsScaffoldState createState() => _EsScaffoldState();
}

class _EsScaffoldState extends State<EsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/FlutterEnEspanol.jpg',
          width: 200.0,
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(
              size: 100.0,
            ),
            Text('Drawer'),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterLogo(
              size: 100.0,
            ),
            Text('End Drawer'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        // Este es el uso del BottomSheet tipo Modal
        // Se queda de tarea hacer uso de un bottomSheet persistente y ahi conoceran uno de los uso Key
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlutterLogo(
                      size: 100.0,
                    ),
                    Text('Bottom Sheet'),
                  ],
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlutterLogo(
                size: 30.0,
              ),
              Text('bottomNavigationBar con BottomAppBar')
            ],
          ),
        ),
      ),
    );
  }
}
