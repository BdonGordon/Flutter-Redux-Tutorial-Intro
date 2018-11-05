import 'package:flutter_red_tutorial/src/store/appState.dart';
import 'package:flutter_red_tutorial/src/actionreducers/comment.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    commentState: commentReducer(state.commentState, action)
  );
}