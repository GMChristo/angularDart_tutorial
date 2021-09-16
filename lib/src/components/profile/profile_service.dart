import 'package:angular/angular.dart';
import 'package:angularDart_tutorial/src/model/course_model.dart';

@Injectable()
class ProfileService{
  final _profile = Profile(
    '111',
    'Mary Jane',
    'marry.jane@gmail.com',
    'golden',
    <Course>[Course('333', 'AngularDart', 'CodeReview', 0,)],
    <Course>[],
    DateTime.now().toIso8601String(),
  );
  Profile getProfile(){
    return this._profile;
  }
}

class Profile {
  String uid;
  String name;
  String email;
  List<Course> courses;
  List<Course> finishedCourses;
  String badge;
  String updateAt = DateTime.now().toIso8601String();

  Profile(
    this.uid,
    this.name,
    this.email,
    [
      this.badge = 'golden',
      this.courses = const [],
      this.finishedCourses = const [],
      this.updateAt,
    ]);
}