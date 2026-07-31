import 'package:flutter/material.dart';
import 'package:flutter_application_hive_adaptors/usermodel.g.dart';
import 'package:hive_flutter/adapters.dart';

class userPage extends StatefulWidget {
  const userPage({super.key});

  @override
  State<userPage> createState() => _userPageState();
}

class _userPageState extends State<userPage> {
  final userbox = Hive.box<Usermodel>('users');
  var namectrl = TextEditingController();
  var emailctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: namectrl),
          TextField(controller: emailctrl),
          ElevatedButton(onPressed: () async {
            await userbox.add(
              Usermodel(name: namectrl.text, email: emailctrl.text)
            );
          }, child: Text("save user")),
        ],
      ),
    );
  }
}
