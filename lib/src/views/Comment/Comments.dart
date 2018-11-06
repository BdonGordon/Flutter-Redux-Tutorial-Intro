import 'package:flutter/material.dart';
import 'package:flutter_red_tutorial/src/models/Comment.dart';
import 'package:flutter_red_tutorial/src/store/appState.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Comments extends StatefulWidget {
  CommentsState createState() {
    return new CommentsState();
  }
}

class CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StoreConnector<AppState, IComment> (
      converter: (store) => store.state.commentState,
      builder: (context, comment) {
        return ListView(
            children: <Widget>[
              ListTile(
                title: Text(comment.userName),
                subtitle: Text(comment.commentText),
              )
            ]
        );
      }
    );
  }
}