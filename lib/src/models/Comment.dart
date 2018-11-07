/// Same idea here just like AppState, but instead we're working with typical Data Types

class IComment {
  final String userName; //simply initialize to nothing
  final String commentText;
  final List<IComment> commentsList;

  IComment({
    this.userName,
    this.commentText,
    this.commentsList
  });

  factory IComment.initial() {
    return new IComment(
      userName: "",
      commentText: "",
      commentsList: []
    );
  }

  IComment copyWith({String userName, String commentText, List<IComment> commentsList}) {
    return new IComment(
      userName: userName ?? this.userName,
      commentText: commentText ?? this.commentText,
      commentsList: commentsList ?? this.commentsList
    );
  }
}