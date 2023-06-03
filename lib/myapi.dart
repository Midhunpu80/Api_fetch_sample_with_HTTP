// // To parse this JSON data, do
// //
// //     final myapi = myapiFromJson(jsonString);

// import 'dart:convert';

// List<Myapi> myapiFromJson(String str) => List<Myapi>.from(json.decode(str).map((x) => Myapi.fromJson(x)));

// String myapiToJson(List<Myapi> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Myapi {
//     int userId;
//     int id;
//     String title;
//     String body;

//     Myapi({
//         required this.userId,
//         required this.id,
//         required this.title,
//         required this.body,
//     });

//     factory Myapi.fromJson(Map<String, dynamic> json) => Myapi(
//         userId: json["userId"],
//         id: json["id"],
//         title: json["title"],
//         body: json["body"],
//     );

//     Map<String, dynamic> toJson() => {
//         "userId": userId,
//         "id": id,
//         "title": title,
//         "body": body,
//     };
// }
// To parse this JSON data, do
//
//     final myapi = myapiFromJson(jsonString);

import 'dart:convert';

List<Myapi> myapiFromJson(String str) => List<Myapi>.from(json.decode(str).map((x) => Myapi.fromJson(x)));

String myapiToJson(List<Myapi> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Myapi {
    int? postId;
    int? id;
    String? name;
    String? email;
    String? body;

    Myapi({
        required this.postId,
        required this.id,
        required this.name,
        required this.email,
        required this.body,
    });

    factory Myapi.fromJson(Map<String, dynamic> json) => Myapi(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "postId": postId,
        "id": id,
        "name": name,
        "email": email,
        "body": body,
    };
}
