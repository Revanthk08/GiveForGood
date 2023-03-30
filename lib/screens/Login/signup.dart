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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize:
                  Size.fromHeight(AppBar().preferredSize.height * 0.4),
              child: Container(
                height: 0.06 * hei,
                child: Card(
                  color: Colors.grey[200],
                  elevation: 2,
                  margin: EdgeInsets.symmetric(
                      horizontal: 0.03 * wid, vertical: 0.01 * hei),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: TabBar(
                      indicatorPadding: EdgeInsets.symmetric(
                          horizontal: 0.01 * wid, vertical: 0.005 * hei),
                      indicator: BoxDecoration(
                          color: red, borderRadius: BorderRadius.circular(8)),
                      tabs: [
                        Text(
                          "Individual",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 0.018 * hei,
                              color: Colors.white),
                        ),
                        Text(
                          "Organization",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 0.02 * hei,
                              color: Colors.black),
                        )
                      ]),
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: Column(
              children: const [
                Expanded(
                    child: TabBarView(children: [IndSignUp(), OrgSignUp()]))
              ],
            ),
          )),
    );
  }
}
