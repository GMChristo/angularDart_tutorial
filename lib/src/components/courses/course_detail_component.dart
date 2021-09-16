import 'package:angular/angular.dart';
import 'package:angularDart_tutorial/src/components/card/card_component.dart';
import 'package:angularDart_tutorial/src/components/courses/course_service.dart';
import 'package:angularDart_tutorial/src/model/course_model.dart';
import 'package:angularDart_tutorial/src/utils/route_paths.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'course-detail',
  // templateUrl: 'course_detail_template.html',
  template: '''
      <div class='row'>
        <p *ngIf='selected == null'>
          No selected Course or Unknown
        </p>
        <course-card 
                *ngIf='selected != null'
                (onDelete)="deleteCourse()"
                (onViewDetail)="enrollCourse()"
                firstBtnTitle="Enroll"
                [selectedCourse]='selected'>
        </course-card>
      </div>
    ''',
  directives: [
    coreDirectives,
    CourseCard
  ],
  providers: [ClassProvider(CourseService)],
)
class CourseDetail implements OnActivate{

  final CourseService _courseService;
  Course selected;
  final Location _location;

  CourseDetail(this._courseService,  this._location);
  @override
  void onActivate(RouterState previous, RouterState current) {
    final uid = getId(current.parameters);
    if (uid != null) {
      selected = _courseService.getSingleCourse(uid);
    }
  }

  void deleteCourse() {
    // print('deleteCourse() detail - ${selected.uid}');
    var lalala2 = _courseService.getAll();
    print('deleteCourse() detail_component antes');
    print(lalala2);
    _courseService.deleteCourse(selected.uid);
    var lalala = _courseService.getAll();
    print('deleteCourse() detail_component');
    print(lalala);
    _location.back();
  }

  void enrollCourse() {
    this._courseService.enroll(selected);
  }
}
