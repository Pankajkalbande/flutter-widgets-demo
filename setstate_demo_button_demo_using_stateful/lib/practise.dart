import 'package:flutter/material.dart';

void main() {
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage3(),
      theme: ThemeData.dark(),
      // theme: ThemeData(
      //   primarySwatch: Colors.grey,
      //   accentColor: Colors.teal,
      // ),
    );
  }
}

class HomePage3 extends StatefulWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  String text = "India";

  void _chageTextAfterPressed() {
    setState(
      () {
        if (text.startsWith('I')) {
          text = "America";
        } else {
          text = "India";
        }
      },
    );
  }

  Widget _widgetofBody() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(fontSize: 25.0),
            ),
            // ignore: deprecated_member_use
            // RaisedButton(
            //   child: Text(
            //     'Click Here',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 15.0,
            //     ),
            //   ),
            //   onPressed: _chageTextAfterPressed,
            //   color: Colors.red,
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _widgetofBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: _chageTextAfterPressed,
        child: Icon(Icons.message),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
