import 'package:flutter/material.dart';
import 'package:givelive/resuable/colors.dart';
import 'package:givelive/screens/Login/IndSignup.dart';
import 'package:givelive/screens/Login/OrgSignUp.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    TabController s = TabController(length: 2, vsync: this);
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Material(
            child: Container(
              height: 0.06 * hei,
              child: Card(
                margin: EdgeInsets.symmetric(
                    horizontal: 0.03 * wid, vertical: 0.01 * hei),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: TabBar(
                    indicator: BoxDecoration(
                        color: red, borderRadius: BorderRadius.circular(10)),
                    tabs: [
                      Text(
                        "Photos",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 0.018 * hei,
                            color: Colors.white),
                      ),
                      Text(
                        "Videos",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 0.02 * hei,
                            color: Colors.black),
                      )
                    ]),
              ),
            ),
          ),
          Expanded(child: TabBarView(children: [IndSignUp(), OrgSignUp()]))
        ],
      ),
    ));
  }
}
