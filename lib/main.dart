import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_red_tutorial/models/appState.dart';
import 'package:flutter_red_tutorial/reducers/rootReducers.dart';
import 'package:flutter_red_tutorial/containers/counter/counter.dart';
import 'package:flutter_red_tutorial/containers/counter/increaseCounter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final store = new Store<AppState> (
    rootReducer,
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
      body: Container(
          child: Column(
            children: <Widget>[
              Text("Number of times press:"),
              new Counter()
            ],
          )
      ),
      floatingActionButton: new IncreaseCountButton()
    );
  }
}