import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:step_app/src/providers/steps/steps_provider.dart';
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
  List<String> categories = [];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Provider.of<StepsProvider>(context, listen: false).getSteps();
      while (true) {
        await Provider.of<StepsProvider>(context, listen: false)
            .incrementSteps();
      }
    });
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
            CustomTextButton(
              title: "Daily steps",
              onPressed: () {
                // AutoRouter.of(context).navigate(
                //   const RandomJokeRoute(),
                // );
              },
            ),
            Container(
              width: deviceSize.width * 0.8,
              height: deviceSize.height * 0.3,
              decoration: const ShapeDecoration(
                color: ApplicationStyle.darkBlueColor,
                shape: OvalBorder(),
              ),
              child: CustomTextButton(
                title: steps.toString(),
                color: ApplicationStyle.white,
                onPressed: () {},
              ),
            ),
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
          ],
        ),
      ),
    );
  }
}
