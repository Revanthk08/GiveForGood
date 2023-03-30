import 'package:flutter/material.dart';
import 'package:givelive/models/user_model.dart';
import 'package:givelive/navtab.dart';
import 'package:givelive/provider/auth_provider.dart';
import 'package:givelive/screens/Homepage/detailspage.dart';
import 'package:givelive/screens/Login/login_page.dart';
import 'package:provider/provider.dart';
import '../../resuable/colors.dart';
import '../../resuable/reusable_widgets.dart';

class IndSignUp extends StatefulWidget {
  const IndSignUp({super.key});

  @override
  State<IndSignUp> createState() => _IndSignUpState();
}

class _IndSignUpState extends State<IndSignUp> {
  final fname = TextEditingController();
  final lname = TextEditingController();
  final gmail = TextEditingController();
  final password = TextEditingController();
  final check = TextEditingController();
  String firstname = "";
  String lastname = "";
  String emailid = "";
  String pass = "";
  bool pvisibility = false;
  bool cpvisibility = false;

  void dispose() {
    super.dispose();
    fname.dispose;
    lname.dispose();
    gmail.dispose();
    password.dispose();
    check.dispose();
  }

  _checkthepassword(TextEditingController a, TextEditingController b) {
    if (a == b) {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    String fname = '';
    String lname = '';
    String email = '';
    String password = '';
    String cpassword = '';

    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: unnecessary_const
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        14.27 * fem, 0 * fem, 18.27 * fem, 10 * fem),
                    child: Text(
                      "Create an Account!",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 0.03 * hei),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          16 * fem, 0 * fem, 18.27 * fem, 0),
                      child: Text(
                          "Create an account to donate and help \nother in hunger.",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 0.018 * hei,
                              height: 0.9,
                              color: Color(0xff9A9A9A)))),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          0.05 * wid, 0.015 * hei, 0.05 * wid, 0.01 * hei),
                      child: const Text(
                        "First Name",
                        style: TextStyle(
                            fontFamily: "Poppins-Medium",
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      )),
                  const SizedBox(height: 2),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0.03 * wid),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: TextFormField(
                      onChanged: (val) {
                        fname = val;
                      },
                      keyboardType: TextInputType.name,
                      cursorColor: grey,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding: EdgeInsets.fromLTRB(
                            14 * fem, 13 * fem, 14 * fem, 12 * fem),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        // labelText: "mobile",
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          0.05 * wid, 0.015 * hei, 0.05 * wid, 0.01 * hei),
                      child: const Text(
                        "Last Name",
                        style: TextStyle(
                            fontFamily: "Poppins-Medium",
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      )),
                  const SizedBox(height: 2),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0.03 * wid),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: TextFormField(
                      onChanged: (val) {
                        fname = val;
                      },
                      keyboardType: TextInputType.name,
                      cursorColor: grey,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding: EdgeInsets.fromLTRB(
                            14 * fem, 13 * fem, 14 * fem, 12 * fem),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                        // labelText: "mobile",
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(
                          0.05 * wid, 0.015 * hei, 0.05 * wid, 0.01 * hei),
                      child: const Text(
                        "Email ID",
                        style: TextStyle(
                            fontFamily: "Poppins-Medium",
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      )),
                  const SizedBox(height: 2),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 0.03 * wid),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: TextFormField(
                      onChanged: (val) {
                        email = val;
                      },
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: grey,
                      validator: (val) {
                        return RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(val!)
                            ? null
                            : "Please enter a valid email";
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding: EdgeInsets.fromLTRB(
                            14 * fem, 13 * fem, 14 * fem, 12 * fem),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                      margin:
                          EdgeInsets.only(top: 0.06 * wid, bottom: 0.05 * wid),
                      width: double.infinity,
                      height: 0.05 * hei,
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {
                            storedata();
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(red)),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ))
                ]),
          ),
        ),
      ),
    );
  }

  void storedata() async {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    UserModel usermodel = UserModel(
        fname: fname.text.trim(),
        lname: lname.text.trim(),
        gmail: gmail.text.trim(),
        password: password.text.trim());
    ap.saveUserDatatoFirebase(
      context: context,
      usermodel: usermodel,
      onSuccess: () {
        ap.setSignIn().then((value) => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => homepage()),
            (route) => false));
      },
    );
  }
}
