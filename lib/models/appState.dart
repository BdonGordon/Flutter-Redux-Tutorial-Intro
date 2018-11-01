class AppState {
  final int count;
  final bool isFetching;

  AppState({this.count = 0, this.isFetching = false});

  /// Allows us to create a new state with updated values
  AppState copyWith({int count, bool isFetching}) {
    print("NUms " + count.toString());
    return new AppState(
      count: count ?? this.count,
      isFetching: isFetching ?? this.isFetching
    );
  }

  @override
  String toString() {
    return 'AppState{isFetching: $isFetching, count: $count}';
  }
}