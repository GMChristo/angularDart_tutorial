import 'package:angular/angular.dart';
import 'package:angularDart_tutorial/src/model/course_model.dart';

@Injectable()
class CourseService {
  final List<Course> _courses = [
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

  final List<Course> _enrollCourses = [];

  List<Course> getAll(){
    return _courses;
  }

  Course getSingleCourse(String uid){
    return _courses.firstWhere((course) => course.uid == uid, orElse: () => throw StateError('id param is not found or unknown'),);
  }

  void deleteCourse(Course course){
    this._courses.remove(course);
  }

  void enroll(Course course){
    this._enrollCourses.add(course);
    print(this._enrollCourses);
  }
}