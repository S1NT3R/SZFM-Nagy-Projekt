import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:forest_logger/forest_logger.dart';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:step_app/src/providers/steps/steps_provider.dart';
import 'package:step_app/src/resources/preferences/steps_preference.dart';
import 'package:step_app/src/resources/routes/routes.dart';
import 'package:step_app/src/resources/theme/application_style.dart';
import 'package:step_app/src/ui/elements/custom_text_button.dart';
import 'package:step_app/src/ui/widgets/custom_appbar.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  late Stream<StepCount> stepCountStream;
  late Stream<PedestrianStatus> pedestrianStatusStream;
  String status = 'unknown';
  String steps = 'unknown';
  List<String> categories = [];
  bool hasPermission = false;
  bool hasBTPermission = false;
  bool hasEventPermission = false;

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
    StepsPreference.getSteps().then((value) async {
      await Provider.of<StepsProvider>(context, listen: false).getSteps(value);
    });
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      //startScan();
      await Permission.locationWhenInUse.request().then((ignored) {
        Permission.locationWhenInUse.status.then((status) {
          if (mounted) {
            setState(
              () => hasPermission = status == PermissionStatus.granted,
            );
          }
        });
      });
      await Permission.bluetoothScan.request().then((ignored) {
        Permission.bluetoothScan.status.then((status) {
          if (mounted) {
            setState(
              () => hasBTPermission = status == PermissionStatus.granted,
            );
          }
        });
      });
      await Permission.activityRecognition.request().then((ignored) {
        Permission.activityRecognition.status.then((status) {
          if (mounted) {
            setState(
              () => hasEventPermission = status == PermissionStatus.granted,
            );
          }
        });
      });
      initPlatformState();
    });
  }

  void startScan() {
    FlutterBluePlus.startScan(timeout: const Duration(seconds: 4));
    FlutterBluePlus.scanResults.listen((scanResult) {
      Forest.debug("scanResult: $scanResult");
      // do something with scan result
      for (var result in scanResult) {
        Forest.debug('${result.device.name} found! rssi: ${result.rssi}');
      }
    });
  }

  Widget buildCompass() {
    return StreamBuilder<CompassEvent>(
      stream: FlutterCompass.events,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error reading heading: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        double? direction = snapshot.data!.heading;

        // if direction is null, then device does not support this sensor
        // show error message
        if (direction == null) {
          return const Center(
            child: Text("Device does not have sensors !"),
          );
        }

        return Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          elevation: 4.0,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Transform.rotate(
              angle: (direction * (math.pi / 180) * -1),
              child: SvgPicture.asset(
                'assets/images/compass.svg',
                width: 100,
                height: 100,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var steps = Provider.of<StepsProvider>(context, listen: true).steps;

    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: scaffoldKey,
        title: "Main Page",
        showLogo: true,
      ),
      body: Container(
        color: ApplicationStyle.backgroundColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Daily steps",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Container(
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
            buildCompass(),
            CustomTextButton(
              title: "Statistics",
              onPressed: () {
                AutoRouter.of(context).navigate(
                  const StatisticsRoute(),
                );
              },
            ),
            CustomTextButton(
              title: "Achievements",
              onPressed: () {
                AutoRouter.of(context).navigate(
                  const AchievementsRoute(),
                );
              },
            ),
            CustomTextButton(
              title: "Distance",
              onPressed: () {
                AutoRouter.of(context).navigate(
                  const DistanceRoute(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
