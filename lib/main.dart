import 'package:flutter/material.dart';
import 'package:shop_coffe/Presentation/Pages/Home_page.dart';
import 'package:shop_coffe/Presentation/Pages/Login_page.dart';
import 'Routes.dart' as Rout;
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      // initialRoute: Rout.Routes.start,
      // routes: {
      //   Rout.Routes.start: (context) => LoginPage(),
      //   Rout.Routes.home: (context) => const Home_Page(),
      // },

      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
