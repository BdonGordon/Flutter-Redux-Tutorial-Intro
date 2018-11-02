/// This would be the "smart" widget that displays a button and dispatches
/// the redux actions. This part communicates with the store.abstract

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_red_tutorial/actions/counterAction.dart';
import 'package:flutter_red_tutorial/models/appState.dart';
import 'package:redux/redux.dart';

class IncreaseCountButton extends StatelessWidget {
  IncreaseCountButton({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Provides the widget access to the store
    return new StoreConnector<AppState, VoidCallback> (
      converter: (Store<AppState> store) {
        return () {
          ///Instead of dispatching a string, we actually dispatch the class
          store.dispatch(new IncremementCountAction());
        };
      },
      /// This is a normal flutter builder method
      builder: (BuildContext context, VoidCallback increase) {
        return FloatingActionButton(
          onPressed: increase,
          child: Icon(Icons.add),
        );
      },
    );
  }
}