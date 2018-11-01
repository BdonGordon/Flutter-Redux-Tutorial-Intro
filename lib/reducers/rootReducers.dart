import 'package:flutter_red_tutorial/models/appState.dart';
import 'package:flutter_red_tutorial/reducers/counterReducer.dart';

AppState rootReducer(AppState state, action) {
  return new AppState(
    isFetching: false,
    count: counterReducer(state.count, action),
  );
}