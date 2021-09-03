import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angularDart_tutorial/src/model/course_model.dart';

@Component(
  selector: 'course-card',
  templateUrl: 'card_template.html',
  directives: [coreDirectives,],
  providers: [],
)
class CourseCard {
  @Input('selectedCourse')
  Course course;

  final StreamController _deleteCtrl = StreamController();
  final StreamController _viewDetailCtrl = StreamController();

  @Output('onDelete')
  Stream get onDelete => _deleteCtrl.stream;
  
  @Output('onViewDetail')
  Stream get onViewDetail => _viewDetailCtrl.stream;

  void deleteItem() {
    _deleteCtrl.sink.add(null);
  }

  void viewDetail(){
    _viewDetailCtrl.sink.add(null);
  }
}