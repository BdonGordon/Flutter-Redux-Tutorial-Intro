import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_red_tutorial/src/store/appState.dart';
import 'package:flutter_red_tutorial/src/store/appReducer.dart';

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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Redux Flutter Tutorial"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body:
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: Text("TextField")
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  ///This
                  alignment: FractionalOffset.topLeft,
                  decoration: BoxDecoration(
                    color: Colors.red
                  ),
                  child: Text("ListView")
                ),
              ),
            ],
          )
        ),
    );
  }
}