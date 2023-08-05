import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/learn_flutter_page.dart';

// the first code on the screen is always stateless because nothing will change
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // how we navigate to the next screen
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const LearnFlutterPage();
              },
            ),
          );
        },
        child: const Text("Learn flutter"),
      ),
    );
  }
}
