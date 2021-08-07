import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Page',
      home: HomePage(),
      // theme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.amber,
        brightness: Brightness.dark,
        accentColor: Colors.blue,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "Hello World";

  void _changeText() {
    setState(() {
      if (myText.startsWith("H")) {
        myText = "Welcome to my App";
      } else {
        myText = "Hello World";
      }
    });
  }

  Widget _bodywidget() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              myText,
              style: TextStyle(fontSize: 22.0),
            ),
            // ignore: deprecated_member_use
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Button Demo'),
      ),
      body: _bodywidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeText,
        child: Icon((Icons.add)),
      ),
    );
  }
}
