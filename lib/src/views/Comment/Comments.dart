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
        return Container(
          /// We can use the newly built list of comments
          child: buildComments(comment.commentsList),
        );
      }
    );
  }

  Widget buildComments(List<IComment> comments) {
    /// Get the most recently posted
    comments.sort((IComment a, IComment b) {
      return b.postedTime.compareTo(a.postedTime);
    });

    final Iterable<ListTile> commentTiles = comments.map((IComment comment){
      return ListTile(
        title: Text(comment.userName),
        subtitle: Text(comment.commentText),
        trailing: Text(comment.postedTime.toString().substring(0, 10)),
      );
    });

    final List<Widget> commentWidgets = ListTile.divideTiles(tiles: commentTiles, context: context).toList();

    return ListView(children: commentWidgets);
  }
}