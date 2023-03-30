// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:givelive/provider/auth_provider.dart';
import 'package:givelive/screens/Login/opt_page.dart';
import 'package:givelive/screens/Login/signup.dart';
import 'package:givelive/screens/Login/login_page.dart';
import 'package:givelive/screens/Login/IndSignup.dart';
import 'package:givelive/screens/alert/alert.dart';
import 'package:givelive/screens/explorePage/explore.dart';
import 'package:givelive/screens/Login/first_page.dart';
import 'package:givelive/navtab.dart';
import 'package:givelive/screens/profile/profile.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthProvider())],
      child: MaterialApp(
          theme: ThemeData(fontFamily: "Poppins"),
          debugShowCheckedModeBanner: false,
          home: firstPage()),
    );
  }
}
