import 'dart:html';

import 'package:flutter/material.dart';
import 'package:newflutter/ScaffoldPage.dart';
import 'package:newflutter/entrene.dart';
import 'package:newflutter/exo1.dart';
import 'package:newflutter/exo1.dart';
//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:newflutter/formInscrit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //partir Déclaration des variables et fonctions
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Exo1(),
      ///home: const Entrene(),
      //home:  const ScaffoldPage(),
       //home: const Premierpage(),
      //home: const Inscription(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Premierpage extends StatefulWidget {
  const Premierpage({super.key});

  @override
  State<Premierpage> createState() => _PremierpageState();
}

class _PremierpageState extends State<Premierpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Développement mobile avec flutter",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
           ElevatedButton(child: const Text("Inscription"),
              onPressed: () { 
                Navigator.push(context, 
                MaterialPageRoute(builder:(context) => const Inscription())
                );
               },)
        ],
      ),
      body: Center(
        widthFactor: double.infinity,
        heightFactor: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.only(top: 30),
              width: 1500,
              height: 200,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(color: Colors.blue, width: 4)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Koivogui koikoi",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, bottom: 5)),
                  Text(
                    textAlign: TextAlign.center,
                    "Apprendre le développemnet par passion",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
                  Text(
                    "10 000 fois",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.green),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.only(top: 30),
              width: 1500,
              height: 250,
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(width: 4, color: Colors.blue),
                  ),
              ),
              
              child: Column(          
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Formation au centre",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 7, top: 7)),
                  Text(
                     textAlign: TextAlign.center,
                    "Utilise les langages comme flutter et dart",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 7, top: 7)),
                  Text(
                    "10 000 fois",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.green),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Text(
                    "les petits au travaille !!!",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        color: Colors.red),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
