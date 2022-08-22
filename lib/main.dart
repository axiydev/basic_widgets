import 'package:basic_widgets/pages/basic/basic_page.dart';
import 'package:basic_widgets/pages/button_page/button_page.dart';
import 'package:basic_widgets/pages/col_page/col_page.dart';
import 'package:basic_widgets/pages/expand_page/expand_page.dart';
import 'package:basic_widgets/pages/image_page/image_page.dart';
import 'package:basic_widgets/pages/layer_page/layer_page.dart';
import 'package:basic_widgets/pages/row_page/row_page.dart';
import 'package:basic_widgets/pages/stack_page/stack_page.dart';
import 'package:basic_widgets/pages/task/task_page.dart';
import 'package:flutter/material.dart';
/*
Created by Axmadjon Isaqov on 09:05:11 19.08.2022
© 2022 @axi_dev 
*/

/*
Mavzu:::Basic Widgets
*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const BasicPage(),
        '/image_page': (context) => const ImagePage(),
        '/button_page': (context) => const ButtonPage(),
        '/layer': (context) => const LayerPage(),
        '/col': (context) => const ColPage(),
        '/row': (context) => const RowPage(),
        '/stack': (context) => const StackPage(),
        '/expand': (context) => const ExpandPage(),
        '/task': (context) => const TaskPage()
      },
      initialRoute: '/',
    );
  }
}
