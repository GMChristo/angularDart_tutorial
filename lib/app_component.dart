import 'package:angular/angular.dart';
import 'package:angularDart_tutorial/src/components/app-header/app-header.component.dart';
import 'package:angularDart_tutorial/src/components/courses/courses_component.dart';
import 'package:angularDart_tutorial/src/utils/routes.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [
    routerDirectives,
    AppHeader,
    CoursesComponent,
  ],
  exports: [
    RoutePaths,
    Routes,
  ],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
