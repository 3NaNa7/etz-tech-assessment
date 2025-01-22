// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/authbtn.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  static const routeName = '/register-screen';

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 20),
              child: Text('Image Placeholder')),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.titleLarge,
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
                                'Sign up with Google',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            )))),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
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
                        controller: _passwordController,
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
                      ),
                      TextFormField(
                        controller: _firstNameController,
                        decoration: InputDecoration(
                            label: Row(
                          children: [
                            Icon(Icons.perm_identity),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text('First Name',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                            ),
                          ],
                        )),
                      ),
                      TextFormField(
                        controller: _lastNameController,
                        decoration: InputDecoration(
                            label: Row(
                          children: [
                            Icon(Icons.perm_identity_sharp),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text('Last Name',
                                  style:
                                      Theme.of(context).textTheme.titleSmall),
                            ),
                          ],
                        )),
                      ),
                      TextFormField(
                        controller: _phoneNumberController,
                        decoration: InputDecoration(
                            label: Row(
                          children: [
                            Icon(Icons.phone),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text('Phone Number',
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
                  child: AuthButton('Sign Up', () {}),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Text('Log in'),
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
