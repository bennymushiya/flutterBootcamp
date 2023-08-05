import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/home_page.dart';
import 'package:flutter_bootcamp/profile_page.dart';

// this is what runs the application
void main() {
  runApp(const MyApp());
}

// everything that starts with a capital letter is known asa widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

//whatever our page we put into here gets shown in the app
  @override
  Widget build(BuildContext context) {
    //it is the main or core component of a flutter app, it provides a wrapper around other Material Widgets.
    return MaterialApp(
      // removes the top debugg sign at the top right
      debugShowCheckedModeBanner: false,

      theme: ThemeData(primarySwatch: Colors.red),
      home: const RootPage(),
    );
  }
}

//MARK: - ROOT PAGE

// stateful widget shows the changes made on the UI, whilst the statelessWidget doesnt show changes
class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  //MARK: - PROPERTIES
  var currentPage = 0;

  // list of items for the tab bar
  List<Widget> pages = const [HomePage(), ProfilePage()];

  //MARK: - BODY

  @override
  Widget build(BuildContext context) {
    // scaffold is a widegt whilst the app bar is an arguement
    return Scaffold(
      //MARK: - APPBAR
      appBar: AppBar(
        title: const Text("Flutter"),
      ),

      //MARK: - BODY
      body: pages[currentPage],

      //MARK: - BUTTON
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('floating action');
        },
        child: const Icon(Icons.wysiwyg_rounded),
      ),

      //MARK: - BOTTOM NAV

      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "home"),
          NavigationDestination(icon: Icon(Icons.person), label: "profile"),
        ],

        // changes the tab bars selectedindex to others/ iterates through the tab bar
        onDestinationSelected: (int index) {
          // without this code the ui will not change/refresh
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
