import 'package:redux/redux.dart';
import 'package:flutter_red_tutorial/src/store/appState.dart';
import 'package:flutter_red_tutorial/src/actionreducers/comment.dart';

/// We'll say that the Container is responsible for creating the Model
/// View 
class CommentViewModel {
  final String userName;
  final String commentText;
  final Function(String userName, String commentText) postComment;

  CommentViewModel({
    this.userName, this.commentText, this.postComment
  });
  
  static CommentViewModel fromStore(Store<AppState> store) {
    return CommentViewModel(
      userName: store.state.commentState.userName,
      commentText: store.state.commentState.commentText,
      postComment: (userName, commentText) =>
          store.dispatch(new AddCommentAction(userName, commentText))
    );
  }
}


