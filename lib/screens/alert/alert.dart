// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:givelive/resuable/colors.dart';
import 'package:givelive/resuable/reusable_widgets.dart';
import 'package:givelive/screens/Login/IndSignup.dart';

class alert extends StatefulWidget {
  const alert({super.key});

  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  @override
  Widget build(BuildContext context) {
    TextEditingController about = TextEditingController();
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    double fem = MediaQuery.of(context).size.width / 428;
    String string1 = "";
    String string2 = "";
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              width: double.infinity,
              height: hei * 0.07,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Raise",
                    style: TextStyle(
                        fontFamily: "Poppins-Medium",
                        fontSize: 30,
                        color: black),
                  ),
                  const Text(" "),
                  Text(
                    "Request",
                    style: TextStyle(
                        fontFamily: "Poppins-Medium", fontSize: 30, color: red),
                  )
                ]),
            Container(
              margin:
                  EdgeInsets.fromLTRB(0.05 * wid, 0.05 * hei, 0, 0.01 * hei),
              child: Text(
                "About",
                style: TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            input("Eg : people near...", about, false, wid / 428, string1),
            Container(
              margin: EdgeInsets.fromLTRB(0.05 * wid, 0, 0, 0.01 * hei),
              child: Text(
                "Location",
                style: TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            input("Eg : “T Nagar, Chennai”", about, false, wid / 428, string2),
            Container(
              margin: EdgeInsets.fromLTRB(0.05 * wid, 0, 0, 0.01 * hei),
              child: const Text(
                "Target:",
                style: TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 0.03 * wid),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.only(left: 0.02 * wid, bottom: 0.01 * hei),
                      child: Text(
                        "Adults:",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 0.012 * hei,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff565656)),
                      ),
                    ),
                    Container(
                      child: CounterWidget(),
                    )
                  ],
                ),
                SizedBox(
                  width: 0.2 * wid,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    padding:
                        EdgeInsets.only(left: 0.02 * wid, bottom: 0.01 * hei),
                    child: Text(
                      "Children:",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 0.012 * hei,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff565656)),
                    ),
                  ),
                  Container(
                    child: CounterWidget(),
                  )
                ])
              ]),
            ),
            Container(
              margin:
                  EdgeInsets.fromLTRB(0.05 * wid, 0.03 * hei, 0, 0.01 * hei),
              child: const Text(
                "Additional Information:",
                style: TextStyle(
                    fontFamily: "Poppins-Bold",
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(
                    16.27 * fem, 0 * fem, 16.27 * fem, 10 * fem),
                width: double.infinity,
                child: TextFormField(
                  cursorColor: Colors.black26,
                  maxLines: 6,
                  style: TextStyle(color: black, fontFamily: "Poppins"),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 0.03 * wid, vertical: 0.01 * hei),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                )),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              width: double.infinity,
              height: 0.06 * hei,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => pop()),
                    // );
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(red)),
                  child: const Text("Request"),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
