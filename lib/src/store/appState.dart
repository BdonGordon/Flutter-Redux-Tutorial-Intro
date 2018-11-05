import 'package:flutter_red_tutorial/src/models/Comment.dart';

class AppState {
  final IComment comment;

  AppState({this.comment});

  AppState copyWith({IComment comment}) {
    return AppState(
      comment: this.comment
    );
  }
}