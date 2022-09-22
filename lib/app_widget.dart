import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';
import 'package:ola_mundo/home_page.dart';
import 'package:ola_mundo/login.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: ((context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.amber,
                brightness: AppController.instance.isDartTheme
                    ? Brightness.dark
                    : Brightness.light),
            initialRoute: '/',
            routes: {
              '/': (context) =>  LoginPage(),
              '/home': (context) =>  HomePage(),
            },
          );
        }));
  }
}
