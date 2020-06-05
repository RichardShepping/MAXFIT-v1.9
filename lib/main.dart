import 'package:flutter/material.dart';
import 'package:maxfit/core/constants.dart';
import 'package:maxfit/domain/user.dart';
import 'package:maxfit/screens/landing.dart';
import 'package:maxfit/services/auth.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaxFitApp());

class MaxFitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().currentUser,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Max Fitness',
          theme: ThemeData(
              primaryColor: bgColorPrimary,
              textTheme: TextTheme(headline6: TextStyle(color: Colors.white))),
          home: LandingPage()),
    );
  }
}