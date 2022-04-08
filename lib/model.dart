import 'package:flutter/foundation.dart';

class Model with ChangeNotifier {
  //  <--- MyModel
  String someValue = 'Hello';

  void doSomething() {
    someValue = 'Goodbye';
    //print(someValue);
    notifyListeners();
  }
}
