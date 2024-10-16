import 'package:flutter/material.dart';
import 'package:shop_coffe/Presentation/Pages/Detail_Items_page.dart';
import 'package:shop_coffe/Presentation/Pages/Home_page.dart';
import 'package:shop_coffe/Presentation/Pages/Login_page.dart';
import 'package:shop_coffe/Presentation/Pages/Splash._page.dart';
// import 'Routes.dart' as Rout;
void main() async {
  runApp(MaterialApp(     
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        "/Home": (context) => const Home_Page(),
        "/Splas": (context)=> const Splash_Page(),
        "/Detail": (context)=> Detail_Item_page(),
      },
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
    ));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const 
//   }
// }
