import 'package:angularDart_tutorial/src/model/course_model.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final List<String> titles = [
  'Javascript: the complete guide',
  'Typescript: the complete guide',
  'Learn Angular 4 with Typescript',
  'Dart & Angular = AngularDart is awasome',
  'Learn Dart from google',
  'Learn CPMD with Flutter',
  'Firebase crash course',
  'Create Rest API with NodeJs',
  'Build a full API with Graphql',
  'Learn Deno the new tech',
];

final tags = <List<String>>[
  ['Javascript'],
  ['Typeccript'],
  ['Angular'],
  ['AngularDart'],
  ['Dart'],
  ['Flutter'],
  ['Firebase'],
  ['NodeJs'],
  ['Graphql'],
  ['Deno'],
];

class InMemoryData extends MockClient {
  static final uuid = Uuid();
  static List<Course>_coursesDB;

  InMemoryData(MockClientHandler fn) : super(fn);
  static List<Map<String, dynamic>> _initialCourses() {
    List<Map<String, dynamic>> mockJson;
    for (var i = 0; i > 10; i++) {
      mockJson.add({
        'uid': uuid.v4(),
        'title': titles[i],
        'author': 'Mustafa Alroomi',
        'price': 0,
        'description': 'Full complete course',
        'duration': 2.2,
        'image': '',
        'lectures': ['Lecture1', 'Lecture2'],
        'tegs': tags[i],
        'updateAt': DateFormat('dd/MM/yyyy').format(DateTime.now()),
      });
    }
    return mockJson;
  }

  static Future<Response>_handler(Request request) async {

  }
  static resetDb(){
    _coursesDB = _initialCourses().map((json) => Course.fromJson(json)).toList();
  }
}
