import 'package:flutter/material.dart';

// ignore: camel_case_types
class view extends StatelessWidget {
  dynamic name;
  dynamic url;

  view({
    required this.name,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        Container(
          height: 500,
          width: double.infinity,
          child: Image.network(
            url,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          name,
          style: TextStyle(color: Colors.black),
        )
      ]),
    );
  }
}
