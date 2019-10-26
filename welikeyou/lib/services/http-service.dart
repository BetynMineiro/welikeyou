import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class HttpService {
  static Future<Map> getData(String url) async {
    http.Response response = await http.get(url);
    print(jsonDecode(response.body));
    return jsonDecode(response.body);
  }
}
