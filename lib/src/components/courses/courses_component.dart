import 'package:angular/angular.dart';
import 'package:angularDart_tutorial/src/model/course_model.dart';

@Component(
  selector: 'courses',
  templateUrl: 'courses_template.html',
  directives: [coreDirectives],
  providers: [],
)
class CoursesComponent {
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
}