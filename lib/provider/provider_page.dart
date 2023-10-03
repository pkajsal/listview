import 'package:flutter/cupertino.dart';

class Provider_class extends ChangeNotifier {
  List _favName = [];
  List get favoriteName => _favName;

  void favorites(String item) {
    final favNameList = _favName.contains(item);
    if (favNameList) {
      _favName.remove(item);
    } else {
      _favName.add(item);
    }
    notifyListeners();
  }

  bool icn_change(String icnName) {
    final favIcn = _favName.contains(icnName);
    return favIcn;
  }
}
