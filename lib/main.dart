import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InkWell_InkResponse',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('InkResponse Demo'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              _counter.toString(),
              style: TextStyle(fontSize: 45.0),
            ),
            InkResponse(
              containedInkWell: true,
              highlightColor: Colors.pinkAccent.withOpacity(0.5),
              splashColor: Colors.indigo,
              radius: 95.0,
              //borderRadius: BorderRadius.circular(45.0),
              onTap: () {
                _counter++;
                setState(() {});
              },
              child: Icon(Icons.account_circle,
                  size: 65.0, color: Colors.pinkAccent),
            )
          ],
        ),
      ),
    );
  }
}
