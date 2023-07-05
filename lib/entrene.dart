import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Entrene extends StatefulWidget {
  const Entrene({super.key});

  @override
  State<Entrene> createState() => _EntreneState();
}

class _EntreneState extends State<Entrene> {
  String chaine = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.access_alarm_outlined,
          size: 20,
          opticalSize: 60,
        ),
        title: const Text(
          "Entrainement page",
          style: TextStyle(fontSize: 20),
        ),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Text(
          "Je au centre !!!! $chaine",
          textAlign: TextAlign.center,
        ),
      ),

      // utilisation de floating
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          chaine = "Je suis un text qui aparais sur chaoue du boutton !";
        });
        tooltip:
        'boutton de na';
        child:
        const Icon(Icons.add);
      }),

      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.only(top: 20, left: 20),
        shape: const CircularNotchedRectangle(),
        color: const Color.fromARGB(255, 31, 53, 70),
        height: 80,
        child: Text(
          "$chaine",
          style: const TextStyle(
              color: Colors.white, fontStyle: FontStyle.italic, fontSize: 16),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawerDragStartBehavior: DragStartBehavior.down,
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: const [
            DrawerHeader(
              margin: EdgeInsets.only(bottom: 8.0),
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8),
              duration: Duration(milliseconds: 300),
              curve: Curves.bounceInOut,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 81, 158, 121),
              ),
              child: Text(
                "Menu de navigation",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            ListTile(
              title: Text(
                "Inscription",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            ListTile(
              title: Text(
                "Data du joure",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
