/// Same idea here just like AppState, but instead we're working with typical Data Types

class IComment {
  final String userName; //simply initialize to nothing
  final String commentText;
  final DateTime postedTime;
  final List<IComment> commentsList;

  IComment({
    this.userName,
    this.commentText,
    this.postedTime,
    this.commentsList
  });

  factory IComment.initial() {
    return new IComment(
      userName: "",
      commentText: "",
      postedTime: DateTime.now(),
      commentsList: []
    );
  }

  IComment copyWith({
    String userName,
    String commentText,
    DateTime postedTime,
    List<IComment> commentsList
  }) {
    return new IComment(
      userName: userName ?? this.userName,
      commentText: commentText ?? this.commentText,
      postedTime: postedTime ?? this.postedTime,
      commentsList: commentsList ?? this.commentsList
    );
  }
}