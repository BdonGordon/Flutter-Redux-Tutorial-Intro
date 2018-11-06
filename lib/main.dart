import 'package:flutter/material.dart';
import 'package:flutter_red_tutorial/src/store/createStore.dart';
import 'package:flutter_red_tutorial/src/store/middleware/ValidationMiddleware.dart';
import 'package:flutter_red_tutorial/src/views/Comment/CommentContainer.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_red_tutorial/src/store/appState.dart';
import 'package:flutter_red_tutorial/src/store/appReducer.dart';

void main() async {
  var store = await createStore();
  runApp(new MyApp(store));
}

class MyApp extends StatefulWidget {
  final Store<AppState> store;

  MyApp(this.store);

  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new StoreProvider<AppState>(
        store: widget.store,
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
                child: Comment()
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