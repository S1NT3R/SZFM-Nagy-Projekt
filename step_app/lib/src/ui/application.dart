import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:step_app/src/providers/steps/steps_provider.dart';
import 'package:step_app/src/resources/routes/routes.dart';
import 'package:step_app/src/resources/theme/theme.dart';

class Application extends StatefulWidget {
  const Application({
    super.key,
  });

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  late AppRouter _appRouter;
  StepsProvider stepsProvider = StepsProvider();

  @override
  void initState() {
    _appRouter = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => stepsProvider,
      child: MaterialApp.router(
        theme: Style.themeData(context),
        title: 'Steps App',
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
