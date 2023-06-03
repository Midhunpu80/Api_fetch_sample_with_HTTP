import 'package:flutter/material.dart';
import 'package:gam_app/ecommerce.dart';
import 'package:gam_app/myapi.dart';
import 'package:gam_app/service.dart';

class newapp extends StatefulWidget {
  @override
  State<newapp> createState() => _newappState();
}

class _newappState extends State<newapp> {
  late Future<List<Myapi>> apiFuture;

  @override
  void initState() {
    apiFuture = getapi();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      // ignore: avoid_unnecessary_containers
      body: FutureBuilder<List<Myapi>>(
          future: apiFuture,
          builder: (context, snapshot) {
            return !snapshot.hasData
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Color.fromARGB(255, 114, 54, 244),
                    ),
                  )
                : ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      Myapi item = snapshot.data![index];

                      return Card(
                        child: Container(
                          color: Colors.amber,
                          height: 100,
                          child: ListTile(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ecommerse()));
                            },
                            title: Text(item.email!),
                            subtitle: const Text("const"),
                            leading: const CircleAvatar(),
                          ),
                        ),
                      );
                    });
          }),
    );
  }
}
