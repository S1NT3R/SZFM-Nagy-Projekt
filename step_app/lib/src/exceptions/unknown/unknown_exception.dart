import 'package:step_app/src/exceptions/custom_exception.dart';

class UnknownErrorException implements CustomException {
  @override
  final String message =
      "Ismeretlen hiba történt. Kérjük próbálja újra később.";
  @override
  final String code = "unkown_error_exception";

  @override
  String toCode() {
    return code;
  }

  @override
  String toString() {
    return message;
  }
}
