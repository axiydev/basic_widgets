import 'package:basic_widgets/utils/custom_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  void _showName(String? buttonName) {
    AppToast.show(buttonName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        actions: [
          PopupMenuButton(
              initialValue: 'first',
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text('first')),
                  const PopupMenuItem(child: Text('second')),
                  const PopupMenuItem(child: Text('third')),
                ];
              })
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                _showName('Material Button');
              },
              child: const Text('Material Button'),
            ),
            TextButton(
                onPressed: () {
                  _showName('Text Button');
                },
                child: const Text('Text Button')),
            ElevatedButton(
                onPressed: () {
                  _showName('Elevated Button');
                },
                child: const Text('Elevated Button')),
            OutlinedButton(
                onPressed: () {}, child: const Text('Outlined Button')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            CupertinoButton(
                child: const Text('Cupertino Button'), onPressed: () {}),
            CupertinoButton.filled(
                child: const Text('Cupertino button filled'), onPressed: () {}),
            FloatingActionButton.large(
                heroTag: 'large',
                child: const Icon(Icons.abc),
                onPressed: () {
                  Navigator.of(context).pushNamed('/layer');
                }),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Text Button Icon')),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Elevated Button Icon')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Text Button Icon')),
            DropdownButton(
                value: "salom",
                items: const [
                  DropdownMenuItem(
                    value: 'salom',
                    child: Text('Salom'),
                  ),
                  DropdownMenuItem(
                    value: 'hello',
                    child: Text('Hello'),
                  ),
                  DropdownMenuItem(
                    value: 'hi',
                    child: Text('Hi'),
                  ),
                ],
                onChanged: (value) {})
          ],
        ),
      ),
    );
  }
}
