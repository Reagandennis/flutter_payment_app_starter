import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class DataServices {
  Future<List<dynamic>> getUsers() async {
    var info = rootBundle.loadString("json/data.json");
    List<dynamic> list = json.decode(await info);

    return list.map((e) => e).toList();
  }
}
