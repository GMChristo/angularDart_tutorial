import 'package:angular_router/angular_router.dart';

String idParam = 'id';
class RoutePaths {
  static final courses = RoutePath(path: 'courses');
  static final home = RoutePath(path: '/');
  static final course_detail = RoutePath(path: '${courses.path}/:${idParam}');
}

String getId(Map<String, String>params){
  final id = params[idParam];
  return id ?? null;
}