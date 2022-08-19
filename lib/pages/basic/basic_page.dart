import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BasicPage extends StatefulWidget {
  const BasicPage({super.key});

  ///1
  @override
  State<BasicPage> createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  int? _currentIndex = 0;

  ///2
  @override
  void initState() {
    super.initState();
  }

  ///3
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  ///4 bajarilmaganda
  @override
  void didUpdateWidget(covariant BasicPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  ///4
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
        title: const Text('App Bar'),
        elevation: 10,
        bottomOpacity: .0,
        centerTitle: false,
        foregroundColor: Colors.black,
        flexibleSpace: const FlexibleSpaceBar(
            background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(20)),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.red,
                          Colors.black,
                          Colors.green,
                        ])))),
        shadowColor: Colors.red,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          Icon(CupertinoIcons.alarm_fill)
        ],
      ),
      body: SafeArea(
          child: Center(
        child: Text(
          "Home Page",
          style: GoogleFonts.rubik(fontSize: 30, fontWeight: FontWeight.w600),
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushNamed(context, '/image_page');
          },
          label: const Text('Float')),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex!,
          onTap: (newIndex) {
            _currentIndex = newIndex;
            setState(() {});
          },
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.red,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "notification"),
          ]),
    );
  }

  ///5
  @override
  void deactivate() {
    super.deactivate();
  }

  ///6 ending
  @override
  void dispose() {
    super.dispose();
  }
}
