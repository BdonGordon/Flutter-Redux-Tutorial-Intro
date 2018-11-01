import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_red_tutorial/modules/appState.dart';
import 'package:flutter_red_tutorial/store/reducers.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final store = new Store<AppState> (
    appReducer,
    initialState: new AppState(),
    middleware: []
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
        store: store,
        child: MaterialApp(
          title: 'Redux Flutter',
          theme: new ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Home()
        )
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