import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_red_tutorial/models/appState.dart';
import 'package:redux/redux.dart';

class _ViewModel {
  /// This is the value that we are looking at
  final int count;

  _ViewModel({
    @required this.count,
  });

  /// This creates a new instance of the viewModel with the correct data from
  static _ViewModel fromStore(Store<AppState> store) {
    return new _ViewModel(count: store.state.count);
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      builder: (BuildContext context, _ViewModel vm) {
        return Text(
          vm.count.toString(),
          style: TextStyle(color: Colors.red, fontSize: 18.0),
        );
      },
    );
  }
}