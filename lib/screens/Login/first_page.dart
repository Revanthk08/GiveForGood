// ignore_for_file: camel_case_types
import 'package:country_picker/country_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givelive/provider/auth_provider.dart';
import 'package:givelive/resuable/reusable_widgets.dart';
import 'package:flutter/material.dart';
import 'package:givelive/screens/Login/login_page.dart';
import 'package:givelive/screens/Login/opt_page.dart';
import 'package:provider/provider.dart';

import '../../resuable/colors.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  TextEditingController phoneNo = TextEditingController();
  Country selectedCountry = Country(
    phoneCode: "91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "India",
    example: "India",
    displayName: "India",
    displayNameNoCountryCode: "IN",
    e164Key: "",
  );

  @override
  Widget build(BuildContext context) {
    phoneNo.selection = TextSelection.fromPosition(
      TextPosition(
        offset: phoneNo.text.length,
      ),
    );
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    double fem = MediaQuery.of(context).size.width / 428;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.62,
              child: SvgPicture.asset(
                'assets/logo.svg',
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0.05 * wid),
              child: Text(
                "Enter your phone number",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.normal,
                    fontSize: 0.02 * hei),
              ),
            ),
            Container(
              height: 0.06 * hei,
              margin: EdgeInsets.symmetric(
                  horizontal: 0.03 * wid, vertical: 0.02 * hei),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0 * hei),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    controller: phoneNo,
                    onChanged: (value) {
                      setState(() {
                        phoneNo.text = value;
                      });
                    },
                    style:
                        TextStyle(fontFamily: "Poppins", fontSize: 0.02 * hei),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0.052 * hei),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 0.01 * hei, horizontal: 0.01 * wid),
                        child: InkWell(
                          onTap: () {
                            showCountryPicker(
                                context: context,
                                countryListTheme: CountryListThemeData(
                                  bottomSheetHeight: 0.4 * hei,
                                ),
                                onSelect: (value) {
                                  setState(() {
                                    selectedCountry = value;
                                  });
                                });
                          },
                          child: Text(
                            " + ${selectedCountry.phoneCode}",
                            style: TextStyle(
                                fontSize: 0.02 * hei, fontFamily: "Poppins"),
                          ),
                        ),
                      ),
                      suffixIcon: phoneNo.text.length > 9
                          ? Container(
                              height: 30,
                              width: 30,
                              margin: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: red,
                              ),
                              child: const Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 20,
                              ),
                            )
                          : null,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.zero,
              width: double.infinity,
              height: 46 * fem,
              child: Center(
                child: ElevatedButton(
                  onPressed: () => sendPhoneNumber(),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(red)),
                  child: const Text("Send OTP"),
                ),
              ),
            ),
            Center(
              child: Text(
                "or",
                style: TextStyle(
                    color: Color(0xff9A9A9A),
                    fontFamily: "Poppins",
                    fontSize: 0.019 * hei),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0.005 * hei, 0, 0),
                  child: Text.rich(
                    TextSpan(
                      text: 'I am already a ',
                      style: TextStyle(
                          fontSize: 0.015 * hei,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500),
                      children: <InlineSpan>[
                        TextSpan(
                          text: "GfG ",
                          style: TextStyle(
                              color: red,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 0.015 * hei),
                        ),
                        TextSpan(
                          text: "user !  ",
                          style: TextStyle(
                              fontSize: 0.015 * hei,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: "Login ",
                          style: TextStyle(
                              color: red, decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }

  void sendPhoneNumber() {
    print("object");
    final ap = Provider.of<AuthProvider>(context, listen: false);
    String phoneNumber = phoneNo.text.trim();
    ap.SignIn(context, "+${selectedCountry.phoneCode}$phoneNumber");
  }
}
