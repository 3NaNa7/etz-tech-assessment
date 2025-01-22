// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tech_assessment_etranzact/screens/register_screen.dart';
import '../widgets/authbtn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              child: Text('Image Placeholder')),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            label: Row(children: [
                          Icon(Icons.email),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text('Email ID',
                                style: Theme.of(context).textTheme.titleSmall),
                          ),
                        ])),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Row(
                          children: [
                            Icon(Icons.lock),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text('Password',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                            ),
                          ],
                        )),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 8,
                  ),
                  child: AuthButton('Login', () {}),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Center(
                    child: Text('Or'),
                  ),
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: ListTile(
                            leading: Icon(
                                Icons.login), //TODO: Replace with google logo
                            title: Center(
                              child: Text(
                                'Login with Google',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            )))),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('New to Design?'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RegisterScreen.routeName);
                      },
                      child: Text('Register'),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
