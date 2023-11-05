import 'package:flutter/material.dart';
import 'package:forest_logger/forest_logger.dart';

class LoadingInterface with ChangeNotifier {
  bool _isLoading = false;
  bool _secondIsLoading = false;

  bool get isLoading {
    return _isLoading;
  }

  set isLoading(value) {
    _isLoading = value;
    Forest.debug("Notified.");
    notifyListeners();
  }

  bool get secondIsLoading {
    return _secondIsLoading;
  }

  set secondIsLoading(value) {
    _secondIsLoading = value;
    Forest.debug("Notified.");
    notifyListeners();
  }
}
