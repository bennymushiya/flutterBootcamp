import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
//MARK: - PROPERTIES

  var isSwitch = false;
  bool? isCheckedBox = false;

//MARK: - BODY

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("learning flutter here bro"),

        // gets rid of nav bar back button
        automaticallyImplyLeading: false,

        // creates our own custom back button
        leading: IconButton(
          onPressed: () {
            // the context helps flutter keep track of which stack where on in the navigation bar
            // removes the current page of the navigation stack, so goes to the previous page
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),

        actions: [
          IconButton(
              onPressed: () {
                debugPrint("actions");
              },
              icon: const Icon(Icons.abc_sharp))
        ],
      ),

      // MARK: - BODY

      // body is the middle body of the app/ e.g safearea and colum is a vstack
      body: SingleChildScrollView(
        child: Column(
          children: [
            //MARK: - Image, how we get oour own images
            Image.asset("images/Carlos.jpg"),

            //MARK: - SIZEDBOX, its like padding, gives us spacing between widgets
            const SizedBox(height: 10),

            //MARK: - DIVIDER
            const Divider(color: Colors.orange),

            //MARK: - CONTAINER - you can put multiple other things inside it
            Container(
              // margin is like padding, we get spacing outside the containers
              margin: const EdgeInsets.all(10.0),

              //padding, gives us spacing inside the container
              padding: const EdgeInsets.all(10.0),
              width: double.infinity,
              color: Colors.red,

              // this is how we align widgets
              child: const Center(
                child: Text(
                  "this is text weget",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            //MARK: - elevated button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: isSwitch ? Colors.green : Colors.black),
              onPressed: () {
                debugPrint("elevated buttons and that");
              },
              child: const Text("elevating"),
            ),

            //MARK: - outline button
            OutlinedButton(
              onPressed: () {
                debugPrint("outlinint butt buttons and that");
              },
              child: const Text("outlining"),
            ),

            //MARK: - TEXT BUTTON
            TextButton(
              onPressed: () {
                debugPrint("texting button");
              },
              child: const Text("text button"),
            ),

            //MARK: - ROW

            // we wrap the row here in a gesture detector so we can press it
            GestureDetector(
              // triggers the whole row to be selected/tapped
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("we printing things here");
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.red,
                  ),
                  Text("row wideget"),
                  Icon(Icons.abc_rounded),
                ],
              ),
            ),

            //MARK: - SWITCH TOGGLE

            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),

            Checkbox(
                value: isCheckedBox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckedBox = newBool;
                  });
                }),

            Image.network(
                "https://static.wikia.nocookie.net/haikyuu/images/d/d2/Hinata_s4-e1-4.png/revision/latest?cb=20200506183149")
          ],
        ),
      ),
    );
  }
}
