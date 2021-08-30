import 'package:dayone/Pages/home_page.dart';
import 'package:dayone/Pages/login_page.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(




      themeMode: ThemeMode.light,

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      initialRoute: "/login",

      routes: {

        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),


      },
    );


  }
}
