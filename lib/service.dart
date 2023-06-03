// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:gam_app/myapi.dart';
import 'package:gam_app/newapi.dart';
import 'package:http/http.dart' as http;

// ignore: prefer_const_declarations
var url = "https://jsonplaceholder.typicode.com/comments";

Future<List<Myapi>> getapi() async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    List<dynamic> responseData = jsonDecode(response.body);
    List<Myapi> myapiList =
        responseData.map((data) => Myapi.fromJson(data)).toList();

    return myapiList;
  } else {
    throw ("not working");
  }
}

var newurl = "https://jsonplaceholder.typicode.com/photos";
Future<List<Newapi>> bapi() async {
  final response = await http.get(Uri.parse(newurl));
  if (response.statusCode == 200) {
    List<dynamic> respoData = jsonDecode(response.body);
    List<Newapi> newlist = respoData.map((e) => Newapi.fromJson(e)).toList();

    return newlist;
  } else {
    throw ("some wrong thing ");
  }
}
