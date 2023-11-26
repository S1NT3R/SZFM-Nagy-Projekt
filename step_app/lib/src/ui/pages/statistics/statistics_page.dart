import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:forest_logger/forest_logger.dart';
import 'package:pedometer/pedometer.dart';
import 'package:provider/provider.dart';
import 'package:step_app/src/providers/steps/steps_provider.dart';
import 'package:step_app/src/resources/preferences/steps_preference.dart';
import 'package:step_app/src/resources/theme/application_style.dart';
import 'package:step_app/src/ui/widgets/custom_appbar.dart';

@RoutePage()
class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late Stream<StepCount> stepCountStream;
  late Stream<PedestrianStatus> pedestrianStatusStream;
  String status = 'unknown';
  String steps = 'unknown';

  void onStepCount(StepCount event) async {
    Forest.info(event.toString());
    setState(() {
      steps = (event.steps + 10000).toString();
    });
    StepsPreference.setSteps(event.steps);
    Provider.of<StepsProvider>(context, listen: false).getSteps(
      await StepsPreference.getSteps(),
    );
  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    Forest.info(event.toString());
    setState(() {
      status = event.status;
    });
  }

  void onPedestrianStatusError(error) {
    Forest.error('onPedestrianStatusError: $error');
    setState(() {
      status = 'Pedestrian Status not available';
    });
    Forest.info(status);
  }

  void onStepCountError(error) {
    Forest.error('onStepCountError: $error');
    setState(() {
      steps = 'Step Count not available';
    });
  }

  void initPlatformState() {
    pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    pedestrianStatusStream
        .listen(onPedestrianStatusChanged)
        .onError(onPedestrianStatusError);

    stepCountStream = Pedometer.stepCountStream;
    stepCountStream.listen(onStepCount).onError(onStepCountError);

    if (!mounted) return;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      initPlatformState();
      Provider.of<StepsProvider>(context, listen: false).getSteps(
        await StepsPreference.getSteps(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: scaffoldKey,
        title: "Statistics",
      ),
      backgroundColor: ApplicationStyle.backgroundColor,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Weekly steps:",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Container(
              alignment: Alignment.center,
              width: deviceSize.width * 0.6,
              height: deviceSize.height * 0.2,
              decoration: const ShapeDecoration(
                color: ApplicationStyle.darkBlueColor,
                shape: OvalBorder(),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    steps.toString(),
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: ApplicationStyle.white,
                          fontSize: 42,
                        ),
                  ),
                  Icon(
                      status == 'walking'
                          ? Icons.directions_walk
                          : Icons.accessibility_new,
                      color: status == 'walking'
                          ? Colors.green
                          : ApplicationStyle.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
