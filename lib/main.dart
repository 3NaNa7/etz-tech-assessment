// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import './screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          textTheme: Typography.blackCupertino.copyWith(
              titleLarge: TextStyle(
                  color: Color.fromARGB(255, 2, 17, 102),
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
              titleSmall: TextStyle(
                color: Colors.grey[500],
              ),
              titleMedium: TextStyle(
                  color: Color.fromARGB(255, 2, 17, 102), fontSize: 20)),
          useMaterial3: true,
        ),
        home: const LoginScreen(),
        routes: {RegisterScreen.routeName: (_) => RegisterScreen()});
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginScreen());
  }
}
