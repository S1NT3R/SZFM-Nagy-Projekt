import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:step_app/src/resources/theme/application_style.dart';
import 'package:step_app/src/ui/widgets/custom_appbar.dart';

@RoutePage()
class AchievementsPage extends StatefulWidget {
  const AchievementsPage({Key? key}) : super(key: key);

  @override
  State<AchievementsPage> createState() => _AchievementsPageState();
}

class _AchievementsPageState extends State<AchievementsPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
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
      body: Container(),
    );
  }
}
