import 'package:angular/angular.dart';
import 'package:angularDart_tutorial/src/model/course_model.dart';
import 'package:angularDart_tutorial/src/services/helper_service.dart';
import 'package:http/http.dart';

@Injectable()
class ClientService extends HelperService {
  final Client _client;
  static const _base = 'api/courses';
  static final _headers = {'Content-Type': 'application/json'};

  ClientService(this._client);

  //get all
  Future<List<Course>> getAll() async {
    try {
      final res = await _client.get(_base, headers: _headers);
      var courses;
      return courses = (extractData(res) as List)
          .map((json) => Course.fromJson(json))
          .toList();
    } catch (e) {
      throw simplifyError(e);
    }
  }

  //get single
  Future<Course> getSingle(String uid) async {
    try {
      final res = await _client.get('$_base/$uid');
      return Course.fromJson(extractData(res));
    } catch (e) {
      throw simplifyError(e);
    }
    ;
  }
}
