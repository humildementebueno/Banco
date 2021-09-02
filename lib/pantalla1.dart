import 'package:banco/main.dart';
import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ejemplo 2",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Cuerpo1(),
    );
  }
}

class Cuerpo1 extends StatefulWidget {
  @override
  _Cuerpo1State createState() => _Cuerpo1State();
}

class _Cuerpo1State extends State<Cuerpo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cliente"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Jonatan Nicolas Mallea Carrasco",
            style: TextStyle(fontSize: 35, color: Colors.red),
          ),
          Text(
            "CLIENTE",
            style: TextStyle(fontSize: 35, color: Colors.black),
          ),
          RaisedButton(
              color: Colors.blue,
              child: Text(
                "Retornar",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return home();
                }));
              }),
        ],
      ),
    );
  }
}
