import 'package:flutter/material.dart';

class ExpandPage extends StatefulWidget {
  const ExpandPage({super.key});

  @override
  State<ExpandPage> createState() => _ExpandPageState();
}

class _ExpandPageState extends State<ExpandPage> {
  MediaQueryData? _mediaQueryData;
  @override
  void didChangeDependencies() {
    _mediaQueryData = MediaQuery.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: _mediaQueryData!.size.height,
        child: Column(
          children: [
            Container(
              height: 100,
              width: _mediaQueryData!.size.width,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: _mediaQueryData!.size.width,
              color: Colors.black,
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                height: 100,
                width: _mediaQueryData!.size.width,
                color: Colors.blue,
              ),
            ),
            Flexible(
              flex: 8,
              fit: FlexFit.tight,
              child: Container(
                height: 100,
                width: _mediaQueryData!.size.width,
                color: Colors.green,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Flexible(
              flex: 4,
              fit: FlexFit.tight,
              child: Container(
                height: 100,
                width: _mediaQueryData!.size.width,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).pushNamed('/task');
          },
          label: const Text('task')),
    );
  }
}
