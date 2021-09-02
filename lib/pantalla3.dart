import 'package:banco/main.dart';
import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pzo. Fijos"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Jonatan Nicolas Mallea Carrasco",
            style: TextStyle(fontSize: 35, color: Colors.red),
          ),
          Text(
            "Pzo. Fijos",
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
