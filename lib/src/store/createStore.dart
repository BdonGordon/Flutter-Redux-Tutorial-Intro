import 'dart:async';
import 'package:redux/redux.dart';
import 'package:flutter_red_tutorial/src/store/appState.dart';
import 'package:flutter_red_tutorial/src/store/appReducer.dart';
import 'package:flutter_red_tutorial/src/store/middleware/ValidationMiddleware.dart';

Future<Store<AppState>> createStore() async {
  return Store(
    appReducer,
    initialState: AppState.initial(),
    middleware: [
      ValidationMiddleware()
    ]
  );
}