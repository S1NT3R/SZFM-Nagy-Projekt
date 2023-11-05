import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:step_app/src/exceptions/api/connectivity_exception.dart';
import 'package:step_app/src/exceptions/custom_exception.dart';
import 'package:step_app/src/exceptions/unknown/unknown_exception.dart';

class ExceptionHandler {
  static final List<CustomException> exceptions = [
    ConnectivityException(),
    UnknownErrorException(),
  ];

  static Exception convertCodeToException(String errorCode) {
    for (int x = 0; x < exceptions.length; x++) {
      if (exceptions[x].toCode() == errorCode) {
        return exceptions[x];
      }
    }

    return UnknownErrorException();
  }

  static SnackBar getSnack(
    String defaultMessage,
    CustomException exception,
  ) {
    SnackBar snackBar = SnackBar(
      content: Text(
        getMessageByException(defaultMessage, exception),
      ),
    );

    return snackBar;
  }

  static Exception returnException(Object e) {
    if (e is Exception) {
      return e;
    }
    return UnknownErrorException();
  }

  static String getMessageByException(
    String defaultMessage,
    Exception exception,
  ) {
    if (exception is UnknownErrorException) {
      return defaultMessage;
    }
    if (exception is CustomException) {
      return exception.toString();
    }
    log(exception.toString());
    return defaultMessage;
  }
}
