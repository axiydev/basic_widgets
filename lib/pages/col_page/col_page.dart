import 'package:flutter/material.dart';

class ColPage extends StatefulWidget {
  const ColPage({super.key});

  @override
  State<ColPage> createState() => _ColPageState();
}

class _ColPageState extends State<ColPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            LimitedBox(
                maxHeight: 200,
                maxWidth: 300,
                child: Container(height: 200, width: 300, color: Colors.black)),
            LimitedBox(maxHeight: 100, child: Container(color: Colors.red)),
            LimitedBox(
                maxHeight: 200,
                maxWidth: 100,
                child: Container(height: 200, width: 100, color: Colors.green)),
            // LimitedBox(maxHeight: 200, child: Container(color: Colors.orange)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/row');
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
