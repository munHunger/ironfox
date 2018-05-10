import 'package:flutter/material.dart';
import 'package:ironfox/sheet.dart';

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
  Sheet currentSheet = new Sheet();
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
        child: new Container(
          color: Colors.white30,
          child: new GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              padding: const EdgeInsets.all(4.0),
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              children: currentSheet.acordions
                .map((Acordion acordion) { // get all the acordions in the sheet
                  return acordion.note;
                })
                .map((List<Note> noteList) { //Map out all notes that are in the range
                  return noteList.where((Note note) { return (note.value / 100).floor() == 1;}).toList();
                })
                .map((List<Note> noteList) {
                  return noteList.where((Note note) { return ((note.value % 100) / 10).floor() == 1;}).toList().isNotEmpty;
                })
                .map((bool isNote) {
                  return new GridTile(
                    child: Container(
                      width: 1.0,
                      height: 1.0,
                      padding: new EdgeInsets.all(0.0),
                      decoration: new BoxDecoration(
                        color: isNote ? Colors.lightBlueAccent : Colors.lightGreenAccent,
                        border: new Border(
                          bottom: new BorderSide(
                            color: Colors.black
                          ), 
                          top: new BorderSide(
                            color: Colors.black
                          ),
                          left: new BorderSide(
                            color: Colors.black12
                          )
                        )
                      )
                    ),
                  );
                }).toList()),
        )
      )
    );
  }
}
