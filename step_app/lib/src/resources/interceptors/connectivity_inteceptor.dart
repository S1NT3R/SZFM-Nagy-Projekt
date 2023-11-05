import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:step_app/src/exceptions/api/connectivity_exception.dart';

class ConnectivityInterceptor
    implements ResponseInterceptor, RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    ConnectivityResult state = await Connectivity().checkConnectivity();
    if (state == ConnectivityResult.none) {
      throw ConnectivityException();
    }

    return request;
  }

  @override
  FutureOr<Response> onResponse(Response response) {
    return response;
  }
}
