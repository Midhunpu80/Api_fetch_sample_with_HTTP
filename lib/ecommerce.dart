import 'package:flutter/material.dart';
import 'package:gam_app/newapi.dart';
import 'package:gam_app/service.dart';
import 'package:gam_app/view.dart';

class ecommerse extends StatefulWidget {
  @override
  State<ecommerse> createState() => _ecommerseState();
}

class _ecommerseState extends State<ecommerse> {
  Future<List<Newapi>>? bapiFuture;

  @override
  void initState() {
    bapiFuture = bapi();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: FutureBuilder<List<Newapi>>(
          future: bapiFuture,
          builder: (context, snapshot) {
            return !snapshot.hasData
                ? const Center(
                    child: CircularProgressIndicator(
                    color: Colors.amber,
                  ))
                : ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      Newapi app = snapshot.data![index];
                      return Card(
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          child: ListTile(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return view(name: app.title, url:app.url);
                                },
                              ));

                            },
                            title: Text(app.title),
                            subtitle: const Text("increase"),
                            leading: Container(
                              height: 150,
                              width: 80,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    app.url,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                        ),
                      );
                    });
          }),
    );
  }
}
