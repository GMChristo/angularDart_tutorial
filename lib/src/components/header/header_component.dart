import 'package:angular/angular.dart';
import 'package:angularDart_tutorial/src/utils/route_paths.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'app-header',
  templateUrl: 'header_template.html',
  directives: [
    routerDirectives,
    coreDirectives,],
  providers: [],
  exports: [RoutePaths],
)
class AppHeader {



}