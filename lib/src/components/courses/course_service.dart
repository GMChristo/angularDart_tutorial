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

  void deleteCourse(String uid){
    // for (var c in _courses) {
      // if(c.uid == uid){
        // print('c ${c.uid} == uid $uid');
      // }else{
        // print('c ${c.uid} != uid $uid');
      // }
    // }
    // print('courses antes removeWhere: ');
    // _courses.forEach((e) => print(e.toString()));
    this._courses.removeWhere((course) => course.uid == uid);
    // print('courses depois removeWhere: ');
    // _courses.forEach((e) => print(e.toString()));
  }

  void enroll(Course course){
    this._enrollCourses.add(course);
    print(this._enrollCourses);
  }
}