import 'package:forest_logger/forest_logger.dart';
import 'package:step_app/src/resources/handlers/exception_handler.dart';
import 'package:step_app/src/resources/interfaces/loading_interface.dart';

class StepsProvider extends LoadingInterface {
  int steps = 0;

  Future<Exception?> getSteps(int steps) async {
    try {
      isLoading = true;
      Forest.debug("Getting steps: $steps");
      Forest.debug("Getting steps: ${this.steps}");
      this.steps = steps;
      Forest.success("Getting steps success: $steps");
      isLoading = false;
      return null;
    } catch (e) {
      Forest.error(e.toString());
      isLoading = false;
      return ExceptionHandler.returnException(e);
    }
  }

  Future<Exception?> setSteps(int steps) async {
    try {
      isLoading = true;
      this.steps = await Future.delayed(
        const Duration(seconds: 1),
        () => steps,
      );
      Forest.success("Setting steps success: $steps");
      isLoading = false;
      return null;
    } catch (e) {
      Forest.error(e.toString());
      isLoading = false;
      return ExceptionHandler.returnException(e);
    }
  }
}
