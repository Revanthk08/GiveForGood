import 'package:flutter/material.dart';
import 'package:givelive/resuable/colors.dart';
import 'package:givelive/navtab.dart';
import '../../resuable/reusable_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String emailID = "";
  String pass = "";
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: unnecessary_const
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.fromLTRB(
                    14.27 * fem, 0 * fem, 18.27 * fem, 0 * fem),
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 30 * fem),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(
                      14.27 * fem, 0 * fem, 18.27 * fem, 20 * fem),
                  child: const Text(
                      "Nice to meet you! Please login to access \nback and start donating.",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          height: 1.34,
                          color: Color(0xff9A9A9A)))),
              const SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(
                      14.27 * fem, 0 * fem, 18.27 * fem, 10 * fem),
                  child: const Text(
                    "Email ID",
                    style: TextStyle(
                        fontFamily: "Poppins-Medium",
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
              const SizedBox(height: 2),
              input("Eg:xyz@gmail.com", email, false, fem, emailID),
              const SizedBox(height: 4),
              Container(
                  margin: EdgeInsets.fromLTRB(
                      14.27 * fem, 0 * fem, 18.27 * fem, 10 * fem),
                  child: const Text(
                    "Password",
                    style: TextStyle(
                        fontFamily: "Poppins-Medium",
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
              input("password", password, true, fem, pass),
              Container(
                  margin: EdgeInsets.zero,
                  width: double.infinity,
                  height: 46 * fem,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const homepage()));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(red)),
                      child: const Text("login"),
                    ),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
