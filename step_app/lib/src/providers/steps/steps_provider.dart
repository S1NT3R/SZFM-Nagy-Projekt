import 'package:forest_logger/forest_logger.dart';
import 'package:step_app/src/resources/handlers/exception_handler.dart';
import 'package:step_app/src/resources/interfaces/loading_interface.dart';

class StepsProvider extends LoadingInterface {
  int steps = 1000;

  Future<Exception?> getSteps() async {
    try {
      isLoading = true;
      steps = await Future.delayed(
        const Duration(seconds: 1),
        () => steps,
      );
      Forest.success("Getting steps success: $steps");
      isLoading = false;
      return null;
    } catch (e) {
      Forest.error(e.toString());
      isLoading = false;
      return ExceptionHandler.returnException(e);
    }
  }

  Future<Exception?> incrementSteps() async {
    try {
      isLoading = true;
      steps = await Future.delayed(
        const Duration(milliseconds: 300),
        () => steps += 1,
      );
      Forest.success("Incrementing steps success: $steps");
      isLoading = false;
      return null;
    } catch (e) {
      Forest.error(e.toString());
      isLoading = false;
      return ExceptionHandler.returnException(e);
    }
  }
}
