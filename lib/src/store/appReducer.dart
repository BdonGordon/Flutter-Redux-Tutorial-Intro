import 'package:flutter_red_tutorial/src/store/appState.dart';
import 'package:flutter_red_tutorial/src/actionreducers/comment.dart';

/// 5. This is where we define commentState's value to its reducer
AppState appReducer(AppState state, action) {
  return new AppState(
    commentState: commentReducer(state.commentState, action)
  );
}