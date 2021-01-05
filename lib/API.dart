import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://pegawai96.000webhostapp.com/api/check_api.php?action=fetch_all";

class API {
  static Future getUsers() {
    var url = baseUrl;
    return http.get(url);
  }
}