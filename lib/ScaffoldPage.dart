// ignore: file_names
import 'package:flutter/material.dart';
import 'package:newflutter/main.dart';

class ScaffoldPage extends StatefulWidget {
  const ScaffoldPage({super.key});

  @override
  State<ScaffoldPage> createState() => _ScaffoldPageState();
}

class _ScaffoldPageState extends State<ScaffoldPage> {
  // ignore: unused_field
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Premierpage(),
                  ));
            },
            icon: const Icon(
              Icons.ac_unit,
              size: 50,
              opticalSize: 40,
            )),
        title: const Text(
          "Entrainement aux Scaffold",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const Center(
        widthFactor: 20,
        heightFactor: 50,
        child: Text(
          'Veuilleuz _count click sur le boutton pour icremente le nombre !!!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
            _count++;
        });
      },
      tooltip: 'Increment Counter',
      child: const Icon(Icons.add),
      ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.black12,
        child: Container(height: 50.0,),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
