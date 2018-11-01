import 'package:flutter_red_tutorial/modules/appState.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    isLoading: false
  );
}