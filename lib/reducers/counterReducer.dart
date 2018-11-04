import 'package:flutter_red_tutorial/actions/counterAction.dart';

/// This looks pretty familiar! This is where the magic happens
/// Instead of all that Object.assign, we just assign values like
int counterReducer(int currentCount, action) {
  /// Make sure we're comparing the runtimeType if we do swich statements
  switch(action.runtimeType) {
    case IncremementCountAction: {
      currentCount++;
      return currentCount;
    }
    case DecremenetCountAction: {
      currentCount--;
      return currentCount;
    }
    default: {
      return currentCount;
    }
  }
}