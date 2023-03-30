// ignore_for_file: non_constant_identifier_names

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:givelive/navtab.dart';
import 'package:givelive/provider/auth_provider.dart';
import 'package:givelive/screens/Login/IndSignup.dart';
import 'package:givelive/screens/Login/signup.dart';
import 'package:givelive/utils/utils.dart';
import 'package:pinput/pinput.dart';
import 'package:givelive/resuable/colors.dart';
import 'package:provider/provider.dart';

class OtpPage extends StatefulWidget {
  final String verificationId;
  const OtpPage({super.key, required this.verificationId});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  String? Otpcode;
  @override
  Widget build(BuildContext context) {
    final isloading =
        Provider.of<AuthProvider>(context, listen: true).isloading;
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: isloading == true
            ? Center(
                child: CircularProgressIndicator(
                  color: red,
                ),
              )
            : SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.63,
                      child: SvgPicture.asset(
                        'assets/logo.svg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Card(
                        elevation: 3,
                        margin: EdgeInsets.symmetric(
                            horizontal: 0.08 * wid, vertical: 0.01 * hei),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.1 * wid, vertical: 0.02 * hei),
                              child: Text(
                                "Enter OTP",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 0.02 * hei),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    MediaQuery.of(context).size.width * 0.08,
                                    0,
                                    MediaQuery.of(context).size.width * 0.08,
                                    0),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Pinput(
                                        length: 6,
                                        defaultPinTheme: PinTheme(
                                          height: hei * 0.06,
                                          width: wid * 0.1,
                                          decoration: BoxDecoration(
                                            color: Color(0xffd9d9d9),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        ),
                                        onCompleted: (value) {
                                          setState(() {
                                            Otpcode = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0, 0.02 * hei, 0, 0),
                                        width: double.infinity,
                                        height: 0.05 * hei,
                                        child: Center(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              if (Otpcode != null) {
                                                print(Otpcode);
                                                verifyOtp(context, Otpcode!);
                                              } else {
                                                showSnackbar(
                                                    context, "Enter the otp");
                                              }
                                            },
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(red)),
                                            child: Text(
                                              "Submit",
                                              style: TextStyle(
                                                  fontSize: 0.015 * hei),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          "or",
                                          style: TextStyle(
                                              color: Color(0xff9A9A9A),
                                              fontFamily: "Poppins-regular",
                                              fontSize: 0.019 * hei),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0.005 * hei, 0, 0),
                                            child: Text.rich(
                                              TextSpan(
                                                text:
                                                    'Didn’t get the verification OTP?  ',
                                                style: TextStyle(
                                                    fontSize: 0.015 * hei,
                                                    fontFamily:
                                                        "Poppins-Medium",
                                                    fontWeight:
                                                        FontWeight.w500),
                                                children: <InlineSpan>[
                                                  TextSpan(
                                                      text: "Resend",
                                                      style: TextStyle(
                                                          color: red,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {}),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  void verifyOtp(BuildContext context, String Otp) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    ap.verifyOtp(
        context: context,
        verificationId: widget.verificationId,
        Userotp: Otp,
        onSuccess: () {
          ap.checkExistingUser().then((value) async {
            if (value == true) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => homepage()),
                  (route) => false);
            } else {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                  (route) => false);
            }
          });
        });
  }
}
