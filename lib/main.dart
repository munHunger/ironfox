import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Iron Fox',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: 'Iron Fox'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(0.0),
              width: 300.0,
              decoration: new BoxDecoration(
                border: new Border(
                  top: new BorderSide(
                    color: Colors.black
                  )
                )
              ),
              child: new Text('♩ ♩', textScaleFactor: 2.0,),
            ),
            new Container(
              padding: new EdgeInsets.all(0.0),
              width: 300.0,
              decoration: new BoxDecoration(
                border: new Border(
                  bottom: new BorderSide(
                    color: Colors.black
                  ), 
                  top: new BorderSide(
                    color: Colors.black
                  )
                )
              ),
              child: new Text('  ♩', textScaleFactor: 2.0,),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}
