// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:givelive/models.dart';
import 'package:givelive/screens/alert/org_request.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../resuable/colors.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 0.077 * hei,
                padding: EdgeInsets.only(left: 0.03 * wid, top: 0.015 * hei),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // height: 0.1 * hei,
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/locicon.svg',
                            fit: BoxFit.fitHeight,
                          ),
                          // iconSize: 33,
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(0, 0.007 * hei, 0, 0),
                              child: Text(
                                'Jenna Ortega',
                                style: TextStyle(
                                    fontSize: 0.02 * hei,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              child: Text(
                                'OMR Navulur, 25th Lane, Chenn...',
                                style: TextStyle(
                                    fontSize: 0.01 * hei,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade500),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 0.035 * wid),
                      height: hei * 0.055,
                      child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              'assets/icons/notificationicon.svg',
                              fit: BoxFit.fitHeight)),
                    )
                  ],
                ),
              ),
              Stack(children: [
                ClipRRect(
                  child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: EdgeInsets.fromLTRB(0.05 * wid, 0, 0.05 * wid, 0),
                      height: 0.2 * hei,
                      child: Image.asset('assets/Rectangle 43.png')),
                ),
                ClipRRect(
                  child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      margin: EdgeInsets.fromLTRB(0.05 * wid, 0, 0.05 * wid, 0),
                      height: 0.2 * hei,
                      child: SvgPicture.asset('assets/htab.svg')),
                ),
              ]),
              Container(
                margin: EdgeInsets.only(left: 0.05 * wid),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Org. Requests",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 0.025 * hei),
                    ),
                  ],
                ),
              ),
              Container(
                height: hei * 0.21,
                padding: EdgeInsets.symmetric(horizontal: 0.03 * wid),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Card(
                          elevation: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            width: 0.50 * wid,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding: EdgeInsets.fromLTRB(
                                        0.02 * wid, 0.01 * hei, 0.02 * wid, 0),
                                    child: Image.asset(
                                      'assets/Rectangle 43.png',
                                      fit: BoxFit.fill,
                                    )),
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      0.03 * wid, 0.01 * hei, 0.03 * wid, 0),
                                  child: Row(children: [
                                    Text(
                                      "Nirmala Foundation",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 0.015 * hei),
                                    ),
                                    Icon(
                                      Icons.verified_sharp,
                                      color: Color(0xffED413E),
                                      size: 0.015 * hei,
                                    )
                                  ]),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(
                                      0.025 * wid, 0, 0.02 * wid, 0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              child: Icon(
                                                Icons.add_location,
                                                color: red,
                                                size: 0.014 * hei,
                                              ),
                                            ),
                                            Text(
                                              "Anna Nagar",
                                              style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontSize: 0.013 * hei,
                                                  color: red),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          DateFormat('kk:mm a')
                                              .format(DateTime.now()),
                                          style: TextStyle(
                                              fontFamily: "Poppins",
                                              fontSize: 0.012 * hei,
                                              color: red),
                                        )
                                      ]),
                                ),
                                Container(
                                  height: 0.01 * hei,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: LinearPercentIndicator(
                                    animation: true,
                                    animationDuration: 2000,
                                    width: 0.5 * wid,
                                    lineHeight: 4,
                                    percent: 0.40,
                                    backgroundColor: black,
                                    progressColor: red,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0.03 * wid,
                                      vertical: 0.004 * hei),
                                  child: Text(
                                    "₹ 18000",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: red,
                                        fontSize: 0.015 * hei),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 1,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          width: 0.50 * wid,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  padding: EdgeInsets.fromLTRB(
                                      0.02 * wid, 0.01 * hei, 0.02 * wid, 0),
                                  child: Image.asset(
                                    'assets/Rectangle 43.png',
                                    fit: BoxFit.fill,
                                  )),
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    0.03 * wid, 0.01 * hei, 0.03 * wid, 0),
                                child: Row(children: [
                                  Text(
                                    "Nirmala Foundation",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 0.015 * hei),
                                  ),
                                  Icon(
                                    Icons.verified_sharp,
                                    color: Color(0xffED413E),
                                    size: 0.013 * hei,
                                  )
                                ]),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    0.025 * wid, 0, 0.03 * wid, 0),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Icon(
                                              Icons.add_location,
                                              color: red,
                                              size: 0.013 * hei,
                                            ),
                                          ),
                                          Text(
                                            "Anna Nagar",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 0.013 * hei,
                                                color: red),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        DateFormat('kk:mm a')
                                            .format(DateTime.now()),
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 0.013 * hei,
                                            color: red),
                                      )
                                    ]),
                              ),
                              Container(
                                height: 0.01 * hei,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: LinearPercentIndicator(
                                  animation: true,
                                  animationDuration: 2000,
                                  width: 0.50 * wid,
                                  lineHeight: 3,
                                  percent: 0.40,
                                  backgroundColor: black,
                                  progressColor: red,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.03 * wid),
                                child: Text(
                                  "₹ 18000",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: red,
                                      fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 0.05 * wid),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nearby Requests",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 0.025 * hei),
                    ),
                  ],
                ),
              ),
              Container(
                height: hei * 0.20,
                margin: EdgeInsets.symmetric(horizontal: 0.03 * wid),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Card(
                      elevation: 1,
                      child: Container(
                        width: 0.4 * wid,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 0.02 * wid, top: 0.0015 * hei),
                              child: Container(
                                padding: EdgeInsets.only(top: 0.005 * hei),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.greenAccent[400],
                                      size: 10,
                                    ),
                                    Text(
                                      'Active',
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 0.013 * hei,
                                          color: Colors.greenAccent[400]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.02 * wid,
                                  0.005 * hei, 0.02 * wid, 0.005 * hei),
                              child: Text(
                                "Need some food for..",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 0.015 * hei),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(
                                  0.02 * wid, 0.001 * hei, 0, 0),
                              child: Text(
                                "Location",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 0.012 * hei,
                                    color: red),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.02 * wid, 0, 0, 0),
                              child: Text(
                                "T Nagar, Chennai",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 0.012 * hei,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.02 * wid, 0.005 * hei, 0, 0),
                                      child: Text(
                                        "Target",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.012 * hei,
                                            color: red),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.02 * wid, 0, 0, 0),
                                      child: Text(
                                        "3 A, 2 C",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 0.012 * hei,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 0.1 * wid,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.02 * wid, 0.005 * hei, 0, 0),
                                      child: Text(
                                        "Time",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.012 * hei,
                                            color: red),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.02 * wid, 0, 0, 0),
                                      child: Text(
                                        DateFormat('kk:mm a')
                                            .format(DateTime.now()),
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 0.012 * hei,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 0.03 * hei,
                              width: 0.25 * wid,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 0.02 * wid, vertical: 0.01 * hei),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              red)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                carddetails2()));
                                  },
                                  child: Text(
                                    "View Details",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 0.01 * hei),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 1,
                      child: Container(
                        width: 0.4 * wid,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 0.02 * wid, top: 0.0015 * hei),
                              child: Container(
                                padding: EdgeInsets.only(top: 0.005 * hei),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.greenAccent[400],
                                      size: 10,
                                    ),
                                    Text(
                                      'Active',
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 0.013 * hei,
                                          color: Colors.greenAccent[400]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.02 * wid,
                                  0.005 * hei, 0.02 * wid, 0.005 * hei),
                              child: Text(
                                "Need some food for..",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 0.015 * hei),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(
                                  0.02 * wid, 0.001 * hei, 0, 0),
                              child: Text(
                                "Location",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 0.012 * hei,
                                    color: red),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.02 * wid, 0, 0, 0),
                              child: Text(
                                "T Nagar, Chennai",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 0.012 * hei,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.02 * wid, 0.005 * hei, 0, 0),
                                      child: Text(
                                        "Target",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.012 * hei,
                                            color: red),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.02 * wid, 0, 0, 0),
                                      child: Text(
                                        "3 A, 2 C",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 0.012 * hei,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 0.1 * wid,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.02 * wid, 0.005 * hei, 0, 0),
                                      child: Text(
                                        "Time",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.012 * hei,
                                            color: red),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.02 * wid, 0, 0, 0),
                                      child: Text(
                                        DateFormat('kk:mm a')
                                            .format(DateTime.now()),
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 0.012 * hei,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 0.03 * hei,
                              width: 0.25 * wid,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 0.02 * wid, vertical: 0.01 * hei),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              red)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                carddetails2()));
                                  },
                                  child: Text(
                                    "View Details",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 0.01 * hei),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 1,
                      child: Container(
                        width: 0.4 * wid,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 0.02 * wid, top: 0.0015 * hei),
                              child: Container(
                                padding: EdgeInsets.only(top: 0.005 * hei),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.greenAccent[400],
                                      size: 10,
                                    ),
                                    Text(
                                      'Active',
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 0.013 * hei,
                                          color: Colors.greenAccent[400]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.02 * wid,
                                  0.005 * hei, 0.02 * wid, 0.005 * hei),
                              child: Text(
                                "Need some food for..",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 0.015 * hei),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(
                                  0.02 * wid, 0.001 * hei, 0, 0),
                              child: Text(
                                "Location",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 0.012 * hei,
                                    color: red),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.02 * wid, 0, 0, 0),
                              child: Text(
                                "T Nagar, Chennai",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 0.012 * hei,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.02 * wid, 0.005 * hei, 0, 0),
                                      child: Text(
                                        "Target",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.012 * hei,
                                            color: red),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.02 * wid, 0, 0, 0),
                                      child: Text(
                                        "3 A, 2 C",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 0.012 * hei,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 0.1 * wid,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.02 * wid, 0.005 * hei, 0, 0),
                                      child: Text(
                                        "Time",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.012 * hei,
                                            color: red),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(
                                          0.02 * wid, 0, 0, 0),
                                      child: Text(
                                        DateFormat('kk:mm a')
                                            .format(DateTime.now()),
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 0.012 * hei,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 0.03 * hei,
                              width: 0.25 * wid,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 0.02 * wid, vertical: 0.01 * hei),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              red)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                carddetails2()));
                                  },
                                  child: Text(
                                    "View Details",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 0.01 * hei),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 0.05 * wid),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Communities",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                height: 0.1 * hei,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage:
                                  AssetImage('assets/Ellipse 8.png')),
                        ),
                        Container(
                          child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage:
                                  AssetImage('assets/Ellipse 7.png')),
                        ),
                        Container(
                          child: CircleAvatar(
                              radius: 50.0,
                              backgroundImage:
                                  AssetImage('assets/Ellipse 9.png')),
                        ),
                        Container(
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage:
                                AssetImage('assets/Rectangle 43.png'),
                          ),
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
