import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
  final FocusNode jokeFocus = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        scaffoldKey: scaffoldKey,
        title: "Statistics",
      ),
      backgroundColor: ApplicationStyle.backgroundColor,
      body: Container(),
    );
  }
}
