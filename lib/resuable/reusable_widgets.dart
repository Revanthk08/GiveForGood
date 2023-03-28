import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:givelive/resuable/colors.dart';

Widget input(String s, TextEditingController controller, bool isPassword,
    double fem, String change) {
  return Container(
      margin: EdgeInsets.fromLTRB(14.27 * fem, 0 * fem, 18.27 * fem, 20 * fem),
      child: TextFormField(
        cursorColor: Colors.black26,
        style: TextStyle(fontFamily: "Poppins", fontSize: 15 * fem),
        obscureText: isPassword,
        onChanged: (value) {
          setState() {
            change = value;
          }

          print(change);
        },
        decoration: InputDecoration(
          hintText: s,
          filled: true,
          fillColor: Colors.grey[200],
          contentPadding:
              EdgeInsets.fromLTRB(14 * fem, 13 * fem, 14 * fem, 12 * fem),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ));
}

Widget CommunityCard(double height, double width) {
  return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(
          horizontal: 0.04 * width, vertical: 0.005 * height),
      elevation: 2,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: 0.01 * width, vertical: 0.001 * height),
        height: 0.075 * height,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 0.01 * width),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      height: 0.1 * height,
                      margin: EdgeInsets.symmetric(vertical: 0.01 * height),
                      width: 0.12 * width,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.all(Radius.circular(20)),
                      // ),
                      child: Image.asset(
                        'assets/Rectangle 43.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0.03 * width, 0, 0, 0),
                        child: Text(
                          "Nirmala Foundation",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 0.015 * height),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(0.025 * width, 0, 0, 0),
                            child: Icon(
                              Icons.add_location,
                              color: red,
                              size: 0.02 * height,
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(0.001 * width, 0, 0, 0),
                            child: Text(
                              "T Nagar, Chennai",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 0.012 * height,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward,
                    color: red,
                    size: 20,
                  ))
            ],
          ),
        ),
      ));
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 00;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Container(
      height: 0.049 * hei,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.grey.shade200, width: 0.001 * wid),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.remove,
              color: Colors.grey,
            ),
            onPressed: _decrementCounter,
          ),
          Container(
            width: 0.04 * wid,
            child: Center(
              child: Text(
                '$_counter',
                style: TextStyle(color: Colors.black, fontSize: 0.015 * hei),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.grey,
            ),
            onPressed: _incrementCounter,
          ),
        ],
      ),
    );
  }
}
