import 'package:angular/angular.dart';
import 'package:angularDart_tutorial/src/components/profile/profile_service.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'profile',
  templateUrl: 'profile_template.html',
  directives: [
    coreDirectives,
    routerDirectives,
    formDirectives,
  ],
  providers: [ClassProvider(ProfileService)],
  pipes: [
    commonPipes,
  ],
)
class ProfileComponent implements OnInit {
  final ProfileService _profileService;
  bool editMode = false;
  Profile profile;

  ProfileComponent(this._profileService);

  @override
  void ngOnInit() {
    profile = _profileService.getProfile();
  }
}
