import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class Exo1 extends StatefulWidget {
  const Exo1({super.key});

  @override
  State<Exo1> createState() => _Exo1State();
}

class _Exo1State extends State<Exo1> {
  @override
  Widget build(BuildContext context) => Scaffold(
      //Partir en-tete de la page
      appBar: AppBar(
        elevation: 15,
        leading: IconButton(
          icon: const Icon(Icons.train),
          onPressed: () {},
        ),
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            "Exercice d'entrainement en flutter",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        flexibleSpace: FlexibleSpaceBar.createSettings(
          toolbarOpacity: 6,
          currentExtent: 20,
          child: const Text(
            "Une bar au dessour",
            textAlign: TextAlign.center,
          ),
        ),
      ),

      //Le corps de la page de application
      body: Container(
        margin: const EdgeInsets.all(7.0),
        alignment: Alignment.bottomCenter,
        color: const Color.fromARGB(31, 89, 74, 74),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 60.0),
            color: const Color.fromARGB(255, 162, 195, 163),
            child:  SizedBox(
              width: 380.0,
              height: 200.0,
              child: DefaultTextStyle(
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bobbers',
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('It is not enough to do your best,'),
                    TyperAnimatedText('you must know what to do,'),
                    TyperAnimatedText('and then do your best'),
                    TyperAnimatedText('- W.Edwards Deming'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
          ),

          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 60),
              child: SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText('do IT!'),
                      FadeAnimatedText('do it RIGHT!!'),
                      FadeAnimatedText('do it RIGHT NOW!!!'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
            
            ),
          )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add_a_photo),
        tooltip: 'connexion',
      ),

    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    bottomNavigationBar: BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: const [
          Icon(Icons.home, size: 25,),
          Padding(padding: EdgeInsets.all(50)),
          Icon(Icons.person, size: 25,),
          Padding(padding: EdgeInsets.all(50)),
          Icon(Icons.search, size: 25,),
        ],
      )),
    );
}
