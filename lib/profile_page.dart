import 'package:flutter/material.dart';

//MARK: - PROPERTIES

var itemCount = 20;

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  //MARK: - BODY

  @override
  Widget build(BuildContext context) {
    // this is how we loop throough items/list
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("we move different here ${(index + 1)}"),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.select_all),
          onTap: () {
            debugPrint("item selecting is ${(index + 1)}");
          },
        );
      },
    );
  }
}
