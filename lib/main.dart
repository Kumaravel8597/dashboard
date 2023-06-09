import 'package:dashboard/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: Colors.blue
        ));
    return const MaterialApp(
      title: 'DashBoard',
      debugShowCheckedModeBanner: false,
      home:HomeScreen(),
    );
  }
}