import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_red_tutorial/src/store/appState.dart';
import 'package:flutter_red_tutorial/src/actionreducers/comment.dart';
import 'package:flutter_red_tutorial/src/models/Comment.dart';

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

class Comment extends StatefulWidget {
  CommentState createState() {
    return new CommentState();
  }
}

class CommentState extends State<Comment> {
  String _userName = "Brandon Boordon";
  String _commentText;

  handleInputChange(String input) {
    setState(() {
      this._commentText = input;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StoreConnector<AppState, CommentViewModel>(
      /// These parts are needed
      onInit: (store){},
      converter: (store) => CommentViewModel.fromStore(store),
      builder: (BuildContext context, CommentViewModel viewModel) {
        return TextField(
          onChanged: (input) => handleInputChange(input),
          decoration: InputDecoration(
            hintText: "Enter comment",
            suffixIcon: IconButton(
              icon: Icon(Icons.send),
              onPressed: () => viewModel.postComment(this._userName, this._commentText)
            )
          ),
        );
      },
    );
  }
}
