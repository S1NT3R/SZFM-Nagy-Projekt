import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:chopper/chopper.dart';
import 'package:step_app/src/exceptions/unknown/unknown_exception.dart';
import 'package:step_app/src/resources/handlers/exception_handler.dart';

class ExceptionInterceptor implements ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) {
    Map<String, dynamic> body;

    try {
      body = jsonDecode(response.bodyString);
    } catch (e) {
      log(response.bodyString);
      throw UnknownErrorException();
    }
    if (body["status"] != 200) {
      log(response.bodyString);
      if (body["message"] == null) {
        throw UnknownErrorException();
      }

      throw ExceptionHandler.convertCodeToException(body["message"]);
    }

    return response;
  }
}
