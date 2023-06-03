// To parse this JSON data, do
//
//     final newapi = newapiFromJson(jsonString);

import 'dart:convert';

List<Newapi> newapiFromJson(String str) => List<Newapi>.from(json.decode(str).map((x) => Newapi.fromJson(x)));

String newapiToJson(List<Newapi> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Newapi {
    int albumId;
    int id;
    String title;
    String url;
    String thumbnailUrl;

    Newapi({
        required this.albumId,
        required this.id,
        required this.title,
        required this.url,
        required this.thumbnailUrl,
    });

    factory Newapi.fromJson(Map<String, dynamic> json) => Newapi(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
    );

    Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
    };
}
