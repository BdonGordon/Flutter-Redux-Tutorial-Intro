import 'package:flutter_red_tutorial/src/models/Comment.dart';
import 'package:flutter/foundation.dart';

class AppState {
  final IComment commentState;

  AppState({
    @required this.commentState
  });

  factory AppState.inital() {
    return AppState(
      commentState: IComment.initial()
    );
  }

  /// This creates a new state by substituting properties in the previous one
  AppState copyWith({
    IComment commentState
  }) {
    return AppState(
      commentState: commentState ?? this.commentState
    );
  }
}