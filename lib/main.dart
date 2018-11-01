import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Redux Flutter',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home()
    );
  }
}

class Home extends StatefulWidget {

  HomeState createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {

  handleActionPress() {
    print("Hello");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Redux Flutter Tutorial"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
          child: Text("hello")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: handleActionPress(),
        child: Icon(Icons.add),
      ),
    );
  }
}