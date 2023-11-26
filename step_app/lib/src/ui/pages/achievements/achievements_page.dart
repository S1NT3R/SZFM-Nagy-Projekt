import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:forest_logger/forest_logger.dart';
import 'package:pedometer/pedometer.dart';
import 'package:provider/provider.dart';
import 'package:step_app/src/providers/steps/steps_provider.dart';
import 'package:step_app/src/resources/preferences/steps_preference.dart';
import 'package:step_app/src/resources/theme/application_style.dart';
import 'package:step_app/src/ui/elements/statistic_bar.dart';
import 'package:step_app/src/ui/widgets/custom_appbar.dart';

@RoutePage()
class AchievementsPage extends StatefulWidget {
  const AchievementsPage({Key? key}) : super(key: key);

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<int> goals = [1000, 5000, 10000, 15000];
  late Stream<StepCount> stepCountStream;
  late Stream<PedestrianStatus> pedestrianStatusStream;
  String status = 'unknown';
  String steps = 'unknown';

  void onStepCount(StepCount event) async {
    Forest.info(event.toString());
    setState(() {
      steps = event.steps.toString();
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
    initPlatformState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: scaffoldKey,
        title: "Achievements",
      ),
      backgroundColor: ApplicationStyle.backgroundColor,
      body: ListView.builder(
        itemCount: goals.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20,
            ),
            child: StatisticBar(
              steps: steps != "unknown" ? int.parse(steps) : 0,
              maxSteps: goals[index],
            ),
          );
        },
      ),
    );
  }
}
