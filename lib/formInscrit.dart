

import 'package:flutter/material.dart';
import 'package:newflutter/main.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:newflutter/animation.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            child: const Text("Animation"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimationPage()));
            },
          )
        ],
        title: const Text(
          "Inscription",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top: 45),
        color: Colors.blue,
        //le card pour les effes 3d
        child: Card(
          margin:
              const EdgeInsets.only(top: 90, left: 90, right: 90, bottom: 50),
          borderOnForeground: true,
          color: Colors.white,
          elevation: 30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Padding(padding: EdgeInsets.all(50)),
              TextField(
                magnifierConfiguration: TextMagnifierConfiguration(
                    shouldDisplayHandlesInMagnifier: true),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Votren nom",
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(50)),
              TextField(
                magnifierConfiguration: TextMagnifierConfiguration(
                    shouldDisplayHandlesInMagnifier: true),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Votren nom",
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 50)),
              //le boutton
              ButtonBar(
                  alignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  buttonMinWidth: 50,
                  buttonHeight: 30,
                  children: <Widget>[
                    Text(
                      "Connexion",
                      style: TextStyle(fontSize: 18, color: Colors.black12),
                    ),
                  ]),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() { 
          });
        },
        tooltip: 'Animations',
        child: TextButton(onPressed: () {}, child: Icon(Icons.add_home_work)),
      ),
    );
  }
}
