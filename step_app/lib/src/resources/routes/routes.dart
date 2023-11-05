import 'package:auto_route/auto_route.dart';
import 'package:step_app/src/resources/routes/routes.gr.dart';

export 'routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // CustomRoute(
        //   path: '/splash',
        //   page: SplashRoute.page,
        //   initial: true,
        //   transitionsBuilder: TransitionsBuilders.fadeIn,
        //   durationInMilliseconds: 400,
        // ),
        CustomRoute(
          path: '/main',
          page: MainRoute.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
          path: '/statistics',
          page: StatisticsRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
        CustomRoute(
          path: '/achievements',
          page: AchievementsRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
          durationInMilliseconds: 400,
        ),
      ];
}
