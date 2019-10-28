import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class HttpService {
  final String urlBase = "https://welikeyou.nl/api/";
  final String token = "/?token=2c4367bb-f072-4726-b437-0c6c77479a9a";

  Future<Map> getData(String url) async => await http.get(
        url,
        headers: {"Accept": "application/json"},
      ).then((http.Response response) {
        final int statusCode = response.statusCode;

        if (statusCode < 200 || statusCode > 400 || json == null) {
          throw new Exception("Error while fetching data");
        }
        return jsonDecode(response.body);
      });

  Future<Map> postData(String url, Map<String, dynamic> model) async =>
      await http
          .post(
        urlBase + url + token,
        headers: {"Accept": "application/json"},
        body: jsonEncode(model),
      )
          .then((http.Response response) {
        final int statusCode = response.statusCode;

        if (statusCode < 200 || statusCode > 400 || json == null) {
          throw new Exception("Error while fetching data");
        }
        return jsonDecode(response.body);
      });
}
