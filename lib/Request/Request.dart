import 'package:http/http.dart' as http;
import 'package:http/http.dart';

const String baseUrl = 'http://192.168.56.1:8000/api';

Map<String, String> headers(String? accept, String token) {
  return {
    'Accept': accept == null ? 'application/json' : accept,
    'Authorization': 'Bearer $token'
  };
}

Future<Response>? request(
    String route, String token, Map<String, String>? headers) async {
  var url = Uri.parse('$baseUrl/$route');
  var response = await http.post(url,
      headers: headers,
      body: {'email': 'sembassdd@gmail.com', 'password': 'password'});
  return response;

  //User user = User.fromJson(json.decode(response.body)['data']);

  // print(user.role!.name);

  //print('Response body: ${json.decode(response.body)}');
}
