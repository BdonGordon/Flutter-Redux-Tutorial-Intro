import 'package:flutter_red_tutorial/src/models/Comment.dart';
import 'package:redux/redux.dart';

/// This file is nothing like what I've been exposed to in terms of Redux,
/// so unfortunately I can't relate it to anything just yet... Perhaps
/// this is pretty similar to the modules that I've created before. the functions created
/// below the combineReducers is exactly what I do for functions. The reducer is just like
/// the main reducer created to execute actions (without a switch Statement)

/// These will still change the AppState... just looks different from what we're used to
class AddCommentAction {
  final String userName;
  final String commentText;
  List<IComment> commentsList;

  AddCommentAction(this.userName, this.commentText);
}

final commentReducer = combineReducers<IComment>([
  TypedReducer<IComment, AddCommentAction>(_postComment)
]);

IComment _postComment(IComment state, AddCommentAction action) {
  List<IComment> newCommentsList = state.commentsList;
  DateTime newlyPostedTime = DateTime.now();
  IComment addedComment = new IComment(userName: action.userName, commentText: action.commentText, postedTime: newlyPostedTime);
  newCommentsList.add(addedComment);

  return state.copyWith(userName: addedComment.userName, commentText: addedComment.commentText, postedTime: newlyPostedTime, commentsList: newCommentsList);
}