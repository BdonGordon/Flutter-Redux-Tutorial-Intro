import 'package:flutter_red_tutorial/src/models/Comment.dart';
import 'package:flutter/foundation.dart';

class AppState {
  /// 1. Define all the states that will be used in the application
  final IComment commentState;

  /// 2. Define them as inside the AppState constructor
  AppState({
    @required this.commentState
  });

  /// 3. Initialize all of the states for the app here. Note that the "commenState' will be utilized to reference IComment in the reducer
  factory AppState.initial() {
    return AppState(
      commentState: IComment.initial()
    );
  }

  /// 4. Create a new state by substituting properties in the previous one
  AppState copyWith({
    IComment commentState
  }) {
    return AppState(
      commentState: commentState ?? this.commentState
    );
  }
}