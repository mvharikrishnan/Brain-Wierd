import 'dart:convert';
import 'dart:developer';

import 'package:brin_wierd/constant/string.dart';
import 'package:brin_wierd/model/brianModel.dart';
import 'package:http/http.dart' as http;

class Services {
  final client = http.Client();
  var URL = Uri.parse("${baseURL}users");
  Future fetchdata() async {
    var response = await client.get(URL);
    if (response.statusCode == 200) {
      var jsonBody = response.body;
      List<Map<String, dynamic>> jsonList =
          json.decode(jsonBody).cast<Map<String, dynamic>>().toList();

      final List<BrainModel> data =
          jsonList.map((map) => BrainModel.fromJson(map)).toList();
      return data;
    } else {
      log("Some error");
    }
  }
}
