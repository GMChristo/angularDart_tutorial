import 'package:angular/angular.dart';
import 'package:angularDart_tutorial/src/components/card/card_component.dart';
import 'package:angularDart_tutorial/src/components/courses/course_service.dart';
import 'package:angularDart_tutorial/src/model/course_model.dart';
import 'package:angularDart_tutorial/src/utils/route_paths.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'courses',
  templateUrl: 'courses_template.html',
  directives: [
    coreDirectives,
    CourseCard,
  ],
  providers: [
    ClassProvider(CourseService),
  ],
)
class CoursesComponent implements OnInit {
  Course selected;

  final Router _router;
  final CourseService _courseService;

  CoursesComponent(this._router, this._courseService);
  List<Course> courses = [];

  void deleteItem(String uid) async {
    var course = this.courses.firstWhere((cr) => cr.uid == uid);
    if (selected == course) {
      selected = null;
    }
    await this._courseService.deleteCourse(uid);
    this.courses.removeWhere((element) => element.uid == uid);
  }

  @override
  void ngOnInit() async {
    // print('ngOnInit() antes get all courses_component');
    // courses.forEach((e) => print(e.toString()));
    courses = await _courseService.getAll();
    //ao deletar um card via details a lista esta sendo toda preenchida
    // print('ngOnInit() depois get all courses_component');
    courses.forEach((e) => print(e.toString()));
  }

  Future<NavigationResult> viewDetail(Course course) {
    selected = course;
    return _router.navigate(_extractId(selected.uid));
  }

  String _extractId(String uid) {
    return RoutePaths.course_detail.toUrl(parameters: {idParam: '$uid'});
  }
}
