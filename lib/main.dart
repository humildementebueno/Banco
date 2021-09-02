import 'package:banco/pantalla1.dart';
import 'package:banco/pantalla2.dart';
import 'package:banco/pantalla3.dart';
import 'package:banco/pantalla4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(home());
}

class home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.red),
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
        title: Text(
          "Banco",
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Banco Ganadero",
              style: TextStyle(fontSize: 35, color: Colors.red),
            ),
            RaisedButton(
                color: Colors.green[200],
                child: Text(
                  "Clientes",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Pantalla1();
                  }));
                }),
            RaisedButton(
                color: Colors.green[200],
                child: Text(
                  "Ahorros",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Pantalla2();
                  }));
                }),
            RaisedButton(
                color: Colors.green[200],
                child: Text(
                  "Pzo.Fijos",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Pantalla3();
                  }));
                }),
            RaisedButton(
                color: Colors.green[200],
                child: Text(
                  "Prestamos",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return Pantalla4();
                  }));
                }),
            RaisedButton(
                color: Colors.red[700],
                child: Text(
                  "Finalizar",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
                onPressed: () {
                  SystemNavigator.pop();
                }),
          ],
        ),
      ),
    );
  }
}
