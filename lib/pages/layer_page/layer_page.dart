import 'package:flutter/material.dart';

class LayerPage extends StatefulWidget {
  const LayerPage({super.key});

  @override
  State<LayerPage> createState() => _LayerPageState();
}

class _LayerPageState extends State<LayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/col');
          },
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(15)),
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(15),
              color: Colors.blue,

              ///childini joylashuvi [alignment]
              alignment: const Alignment(1, -1),

              child: const Text('Container Widget'),
            ),
          ),
        ),
      ),
    );
  }
}
