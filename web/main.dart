import 'package:angular/angular.dart';
import 'package:angularDart_tutorial/app_component.template.dart' as ng;
import 'package:angularDart_tutorial/src/utils/in_memory_data_service.dart';
import 'package:angular_router/angular_router.dart';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';
import 'main.template.dart' as self;

@GenerateInjector(
  [
  routerProvidersHash,
  // ClassProvider(Client, useClass: BrowserClient),
  ClassProvider(Client, useClass: InMemoryData),
  ]
)
final InjectorFactory injector = self.injector$Injector;
void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector,);
}
