import 'package:flutter_red_tutorial/src/store/appState.dart';
import 'package:flutter_red_tutorial/src/models/Comment.dart';

class AddCommentAction {}

IComment commentReducer(IComment comment, action) {
  switch(action.runtimeType) {
    case AddCommentAction: {

      return comment;
    }

    default: {
      return comment;
    }
  }
}
