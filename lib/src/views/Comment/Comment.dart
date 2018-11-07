import 'package:flutter/material.dart';
import 'package:flutter_red_tutorial/src/views/Comment/CommentContainer.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_red_tutorial/src/store/appState.dart';

class Comment extends StatefulWidget {
  CommentState createState() {
    return new CommentState();
  }
}

class CommentState extends State<Comment> {
  String _userName = "Brandon Boordon";
  String _commentText;
  final TextEditingController textEditingController = new TextEditingController();

  handleInputChange(String input) {
    setState(() {
      this._commentText = input;
    });
  }

  clearTextFieldData() {
    this.textEditingController.clear();
    setState((){
      this._commentText = "";
    });
  }

  @override
  Widget build(BuildContext context) {

    return StoreConnector<AppState, CommentViewModel>(
      /// These parts are needed
      onInit: (store){},
      converter: (store) => CommentViewModel.fromStore(store),
      builder: (BuildContext context, CommentViewModel viewModel) {
        return TextField(
          onChanged: (input) => handleInputChange(input),
          controller: textEditingController,
          decoration: InputDecoration(
              hintText: "Enter comment",
              suffixIcon: IconButton(
                icon: Icon(Icons.send),
                onPressed: (){
                  if(this._commentText != null && this._commentText.length > 0) {
                    viewModel.postComment(this._userName, this._commentText);
                    clearTextFieldData();
                  }
                  else {
                    SnackBar theBar = SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        "Please enter a comment to post."
                      )
                    );
                    Scaffold.of(context).showSnackBar(theBar);
                  }
                }
              )
          ),
        );
      },
    );
  }
}