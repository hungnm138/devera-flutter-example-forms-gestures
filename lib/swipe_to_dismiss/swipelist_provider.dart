import 'dart:collection';

import 'package:flutter/material.dart';

class SourceList with ChangeNotifier {
  final _myList = List<String>.generate(10, (i) {
    return "Number $i";
  });

  List<String> get values => UnmodifiableListView(_myList);

  void removeItem(int index) {
    _myList.removeAt(index);
    notifyListeners();
  }
}
