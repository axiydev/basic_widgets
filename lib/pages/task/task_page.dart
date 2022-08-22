import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.purple,
            alignment: Alignment.center,
            child: const Text('lg12'),
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Row(
              children: [
                // Expanded(
                //     child: Container(
                //   color: Colors.green,
                //   alignment: Alignment.center,
                //   child: RichText(
                //       text: const TextSpan(
                //           style: TextStyle(color: Colors.black),
                //           text: 'xs6\n',
                //           children: [TextSpan(text: 'md3')])),
                // )),
                getWidget(color: Colors.green, text1: 'xs6', text2: 'md3')!,
                getWidget(color: Colors.orange, text1: 'xs6', text2: 'md3')!,
              ],
            ),
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Row(
              children: [
                getWidget(color: Colors.red, text1: 'xs6', text2: 'md3')!,
                getWidget(color: Colors.blue, text1: 'xs6', text2: 'md3')!,
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget? getWidget(
      {required Color? color, required String? text1, required String? text2}) {
    return Expanded(
        child: Container(
            color: color!,
            alignment: Alignment.center,
            child: RichText(
                text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    text: '$text1\n',
                    children: [TextSpan(text: '$text2')]))));
  }
}
