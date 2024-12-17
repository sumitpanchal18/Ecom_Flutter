import 'package:ecom_flutter/Home/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'Home/HomePage.dart';
import 'Login/LoginPage.dart';
import 'Route/MyRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.splashRoute,
      routes: {
        "/": (context) => const MyHomePage(
              title: 'Home Page',
            ),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.splashRoute: (context) => const SplashScreen(),
      },
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.blue, secondary: Colors.red),
        useMaterial3: true,
      ),
    );
  }
}
