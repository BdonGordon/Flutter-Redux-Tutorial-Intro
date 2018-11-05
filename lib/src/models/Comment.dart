import 'package:flutter/foundation.dart';

class IComment {
  final String userName; //simply initialize to nothing
  final String commentText;

  IComment({
   this.userName,
   this.commentText
  });

  factory IComment.initial() {
    return new IComment(
      userName: "",
      commentText: ""
    );
  }

  IComment copyWith({String userName, String commentText}) {
    return new IComment(
      userName: userName ?? this.userName,
      commentText: commentText ?? this.commentText
    );
  }
}