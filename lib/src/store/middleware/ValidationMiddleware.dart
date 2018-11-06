import 'package:flutter_red_tutorial/src/actionreducers/comment.dart';
import 'package:flutter_red_tutorial/src/store/appState.dart';
import 'package:redux/redux.dart';

/// TODO: We can actually create Validation middleware. This will be tackled after we set up the redux

class ValidationMiddleware extends MiddlewareClass<AppState> {
  @override
  void call(Store<AppState> store, action, NextDispatcher next) {
    // TODO: implement call
    switch(action.runtimeType) {
      case AddCommentAction: {
        print("Dispatching: $action");
        print("Values: ${store.state.commentState.userName} "
            " and ${store.state.commentState.commentText}");
        break;
      }
    }

    next(action);
  }

}