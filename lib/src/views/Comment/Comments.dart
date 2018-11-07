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
    List<IComment> comments = <IComment>[];
    IComment commentOne = new IComment(userName: "Jordy", commentText: "It's home time");
    IComment commentTwo = new IComment(userName: "Brad", commentText: "I'm hungry");
    comments.add(commentOne);
    comments.add(commentTwo);

    // TODO: implement build
    return StoreConnector<AppState, IComment> (
      converter: (store) => store.state.commentState,
      builder: (context, comment) {
        return Container(
          child: buildComments(comment.commentsList),
        );
      }
    );
  }

  Widget buildComments(List<IComment> comments) {
    final Iterable<ListTile> commentTiles = comments.map((IComment comment){
      return ListTile(
        title: Text(comment.userName),
        subtitle: Text(comment.commentText),
      );
    });

    final List<Widget> commentWidgets = ListTile.divideTiles(tiles: commentTiles, context: context).toList();

    return ListView(children: commentWidgets);
  }
}