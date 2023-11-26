// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:step_app/src/ui/pages/achievements/achievements_page.dart'
    as _i1;
import 'package:step_app/src/ui/pages/distance/distance_page.dart' as _i2;
import 'package:step_app/src/ui/pages/main/main_page.dart' as _i3;
import 'package:step_app/src/ui/pages/statistics/statistics_page.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AchievementsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AchievementsPage(),
      );
    },
    DistanceRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DistancePage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainPage(),
      );
    },
    StatisticsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.StatisticsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AchievementsPage]
class AchievementsRoute extends _i5.PageRouteInfo<void> {
  const AchievementsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AchievementsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AchievementsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DistancePage]
class DistanceRoute extends _i5.PageRouteInfo<void> {
  const DistanceRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DistanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'DistanceRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.StatisticsPage]
class StatisticsRoute extends _i5.PageRouteInfo<void> {
  const StatisticsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          StatisticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatisticsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
