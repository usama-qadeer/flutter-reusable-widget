extension ListExtensions<T> on List<T> {
  // Get the first element safely
  T? get firstOrNull => isEmpty ? null : first;

  // Get the last element safely
  T? get lastOrNull => isEmpty ? null : last;

  // Remove duplicates from the list
  List<T> removeDuplicates() {
    return toSet().toList();
  }

  // Shuffle the list
  void shuffleList() {
    shuffle();
  }
}
