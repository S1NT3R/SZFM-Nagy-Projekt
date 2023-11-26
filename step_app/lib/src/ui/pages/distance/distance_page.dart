import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:forest_logger/forest_logger.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:step_app/src/resources/helpers/calculation_helper.dart';
import 'package:step_app/src/resources/theme/application_style.dart';
import 'package:step_app/src/ui/widgets/custom_appbar.dart';

@RoutePage()
class DistancePage extends StatefulWidget {
  const DistancePage({Key? key}) : super(key: key);

  @override
  State<DistancePage> createState() => _DistancePageState();
}

class _DistancePageState extends State<DistancePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List devices = [];
  bool hasBTPermission = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Permission.bluetoothScan.request().then((ignored) {
        Permission.bluetoothScan.status.then((status) {
          if (mounted) {
            setState(
              () => hasBTPermission = status == PermissionStatus.granted,
            );
          }
        });
      });
    });
    startScan();
  }

  void startScan() {
    FlutterBluePlus.startScan(timeout: const Duration(seconds: 4));
    FlutterBluePlus.scanResults.listen((scanResult) {
      Forest.debug("scanResult: $scanResult");
      // do something with scan result
      for (var result in scanResult) {
        Forest.debug('${result.device.name} found! rssi: ${result.rssi}');
        devices.add(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: scaffoldKey,
        title: "Devices nearby",
        showLogo: true,
      ),
      body: Container(
        color: ApplicationStyle.primaryColor,
        height: deviceSize.height,
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: devices.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                devices[index].device.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                CalculationHelper.calculateDistanceFromRssi(devices[index].rssi)
                    .toString(),
                style: Theme.of(context).textTheme.titleSmall,
              ),
              onTap: () {},
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  style: BorderStyle.solid,
                  color: ApplicationStyle.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
