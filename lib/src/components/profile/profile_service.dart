import 'package:angular/angular.dart';
import 'package:angularDart_tutorial/src/model/course_model.dart';
import 'package:angularDart_tutorial/src/model/profile_model.dart';

@Injectable()
class ProfileService{
  final _profile = Profile(
    '111',
    'Mary Jane',
    'marry.jane@gmail.com',
    'https://tinyurl.com/y27lbuav',
    'golden',
    <Course>[Course('333', 'AngularDart', 'CodeReview', 0,)],
    <Course>[],
    DateTime.now().toIso8601String(),
  );
  Profile getProfile(){
    return this._profile;
  }
}
