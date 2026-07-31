import 'package:flutter/material.dart';
import 'package:flutter_application_hive_adaptors/userpage.dart';
import 'package:hive_flutter/adapters.dart';
import 'usermodel.g.dart';
void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UsermodelAdapter());
  await Hive.openBox("mybox");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: userPage()
    );
  }
}
