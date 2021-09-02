import 'route_paths.dart';
import 'package:angular_router/angular_router.dart';
import '../components/courses/courses_component.template.dart' as courses_template;

export 'route_paths.dart';

class Routes {
  static final courses = RouteDefinition(
    routePath: RoutePaths.courses,
    component: courses_template.CoursesComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    courses,
    // RouteDefinition.redirect(
    //   path: '/',
    //   redirectTo: RoutePaths.courses.toUrl(),
    // )
  ];
}