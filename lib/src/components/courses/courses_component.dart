import 'package:angular/angular.dart';
import 'package:angularDart_tutorial/src/components/card/card_component.dart';
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
  providers: [],
)
class CoursesComponent {
  Course selected;

  final Router _router;

  CoursesComponent(this._router);

  List<Course> courses = [
    Course(
      '111',
      'Javascript: the complete course',
      'CodeReview',
      19.99,
      'Full understanding of Javascript ecosystem',
      10,
      'assets/images/1.png',
      ['Lecture1', 'Lecture2'],
      ['Javascript', 'programming'],
      DateTime.now().toIso8601String(),
    ),
    Course(
      '112',
      'Javascript: the complete course',
      'CodeReview',
      19.99,
      'Full understanding of Javascript ecosystem',
      10,
      'assets/images/2.png',
      ['Lecture1', 'Lecture2'],
      ['Javascript', 'programming'],
      DateTime.now().toIso8601String(),
    ),
  ];

  void deleteItem(String uid) {
    courses.removeWhere((course) => course.uid == uid);
  }

  Future<NavigationResult> viewDetail(Course course) {
    selected = course;
    return _router.navigate(_extractId(selected.uid));
  }

  String _extractId(String uid) {
    return RoutePaths.course_detail.toUrl(parameters: {idParam: '$uid'});
  }
}
