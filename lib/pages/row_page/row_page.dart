import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  const RowPage({super.key});

  @override
  State<RowPage> createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: const [
          Center(child: Text('Stack')),
          Center(child: CircularProgressIndicator()),
          Center(
            child: CupertinoActivityIndicator(),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/stack');
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
