// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givelive/resuable/reusable_widgets.dart';

import '../../resuable/colors.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  int itemcount = 15;
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
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
                        padding: EdgeInsets.fromLTRB(0, 0.007 * hei, 0, 0),
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
                  // SizedBox(
                  //   width: 0.27 * wid,
                  // ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(right: 0.035 * wid),
                height: hei * 0.055,
                child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/notificationicon.svg',
                        fit: BoxFit.fitHeight)),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 0.05 * wid, top: 0.01 * hei),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("View all",
                      style: TextStyle(
                          fontFamily: "Poppins", fontSize: 12, color: red)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                      color: red,
                      size: 18,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 0.025 * wid),
          height: 0.12 * hei,
          child: SingleChildScrollView(
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.only(right: 0.017 * wid),
                child: CircleAvatar(
                    radius: 44.0,
                    backgroundImage: AssetImage('assets/Ellipse 8.png')),
              ),
              Container(
                padding: EdgeInsets.only(right: 0.017 * wid),
                child: CircleAvatar(
                    radius: 44.0,
                    backgroundImage: AssetImage('assets/Ellipse 7.png')),
              ),
              Container(
                padding: EdgeInsets.only(right: 0.017 * wid),
                child: CircleAvatar(
                    radius: 44.0,
                    backgroundImage: AssetImage('assets/Ellipse 9.png')),
              ),
              Container(
                padding: EdgeInsets.only(right: 0.011 * wid),
                child: CircleAvatar(
                  radius: 44.0,
                  backgroundImage: AssetImage('assets/Rectangle 43.png'),
                ),
              )
            ]),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 0.05 * wid),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Organizations",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("View all",
                      style: TextStyle(
                          fontFamily: "Poppins", fontSize: 12, color: red)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                      color: red,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
              child: Column(
            children: [
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(
                      horizontal: 0.04 * wid, vertical: 0.005 * hei),
                  elevation: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 0.01 * wid, vertical: 0.001 * hei),
                    height: 0.075 * hei,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 0.01 * wid),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 0.1 * hei,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 0.01 * hei),
                                  width: 0.12 * wid,
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
                                    margin: EdgeInsets.fromLTRB(
                                        0.03 * wid, 0, 0, 0),
                                    child: Text(
                                      "Nirmala Foundation",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 0.015 * hei),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.025 * wid, 0, 0, 0),
                                        child: Icon(
                                          Icons.add_location,
                                          color: red,
                                          size: 0.02 * hei,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.001 * wid, 0, 0, 0),
                                        child: Text(
                                          "T Nagar, Chennai",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.012 * hei,
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
                  )),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(
                      horizontal: 0.04 * wid, vertical: 0.005 * hei),
                  elevation: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 0.01 * wid, vertical: 0.001 * hei),
                    height: 0.075 * hei,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 0.01 * wid),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 0.1 * hei,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 0.01 * hei),
                                  width: 0.12 * wid,
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
                                    margin: EdgeInsets.fromLTRB(
                                        0.03 * wid, 0, 0, 0),
                                    child: Text(
                                      "Robin Hood Army",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 0.015 * hei),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.025 * wid, 0, 0, 0),
                                        child: Icon(
                                          Icons.add_location,
                                          color: red,
                                          size: 0.02 * hei,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.001 * wid, 0, 0, 0),
                                        child: Text(
                                          "Besant Nagar",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.012 * hei,
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
                  )),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(
                      horizontal: 0.04 * wid, vertical: 0.005 * hei),
                  elevation: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 0.01 * wid, vertical: 0.001 * hei),
                    height: 0.075 * hei,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 0.01 * wid),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 0.1 * hei,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 0.01 * hei),
                                  width: 0.12 * wid,
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
                                    margin: EdgeInsets.fromLTRB(
                                        0.03 * wid, 0, 0, 0),
                                    child: Text(
                                      "Feeding India",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 0.015 * hei),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.025 * wid, 0, 0, 0),
                                        child: Icon(
                                          Icons.add_location,
                                          color: red,
                                          size: 0.02 * hei,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.001 * wid, 0, 0, 0),
                                        child: Text(
                                          "Anna Nagar",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.012 * hei,
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
                  )),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(
                      horizontal: 0.04 * wid, vertical: 0.005 * hei),
                  elevation: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 0.01 * wid, vertical: 0.001 * hei),
                    height: 0.075 * hei,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 0.01 * wid),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 0.1 * hei,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 0.01 * hei),
                                  width: 0.12 * wid,
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
                                    margin: EdgeInsets.fromLTRB(
                                        0.03 * wid, 0, 0, 0),
                                    child: Text(
                                      "Annakshetra Foundation",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 0.015 * hei),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.025 * wid, 0, 0, 0),
                                        child: Icon(
                                          Icons.add_location,
                                          color: red,
                                          size: 0.02 * hei,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.001 * wid, 0, 0, 0),
                                        child: Text(
                                          "Tambaram",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.012 * hei,
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
                  )),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(
                      horizontal: 0.04 * wid, vertical: 0.005 * hei),
                  elevation: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 0.01 * wid, vertical: 0.001 * hei),
                    height: 0.075 * hei,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 0.01 * wid),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 0.1 * hei,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 0.01 * hei),
                                  width: 0.12 * wid,
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
                                    margin: EdgeInsets.fromLTRB(
                                        0.03 * wid, 0, 0, 0),
                                    child: Text(
                                      "No Food Waste",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 0.015 * hei),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.025 * wid, 0, 0, 0),
                                        child: Icon(
                                          Icons.add_location,
                                          color: red,
                                          size: 0.02 * hei,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.001 * wid, 0, 0, 0),
                                        child: Text(
                                          "Adyar",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.012 * hei,
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
                  )),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(
                      horizontal: 0.04 * wid, vertical: 0.005 * hei),
                  elevation: 2,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 0.01 * wid, vertical: 0.001 * hei),
                    height: 0.075 * hei,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 0.01 * wid),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 0.1 * hei,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 0.01 * hei),
                                  width: 0.12 * wid,
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
                                    margin: EdgeInsets.fromLTRB(
                                        0.03 * wid, 0, 0, 0),
                                    child: Text(
                                      "Hunger Heroes",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 0.015 * hei),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.025 * wid, 0, 0, 0),
                                        child: Icon(
                                          Icons.add_location,
                                          color: red,
                                          size: 0.02 * hei,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            0.001 * wid, 0, 0, 0),
                                        child: Text(
                                          "Mylapore",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 0.012 * hei,
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
                  ))
            ],
          )),
        )
      ]),
    ));
    // return Scaffold(
    //     backgroundColor: Colors.white,
    //     appBar: AppBar(
    //       toolbarHeight: hei * 0.08,
    //       backgroundColor: Colors.white,
    //       elevation: 0,
    //       leading: IconButton(
    //         onPressed: () {},
    //         padding: EdgeInsets.only(left: 0.02 * wid),
    //         icon: const Icon(
    //           Icons.arrow_back,
    //           color: Colors.red,
    //           size: 30,
    //         ),
    //       ),
    //     ),
    //     body: SafeArea(
    //       child: SingleChildScrollView(
    //         child: Column(
    //           children: [
    //             Center(
    //               child: Stack(
    //                 children: [
    //                   const CircleAvatar(
    //                     backgroundColor: Colors.black,
    //                     radius: 60,
    //                     child: CircleAvatar(
    //                       radius: 58,
    //                       backgroundImage: AssetImage('assets/comprofile.png'),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             Container(
    //               margin: EdgeInsets.only(top: 0.02 * hei),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: const [
    //                   Text(
    //                     'Helping Hands',
    //                     style: TextStyle(
    //                       fontFamily: 'Poppins',
    //                       fontSize: 20,
    //                       fontWeight: FontWeight.w500,
    //                     ),
    //                   ),
    //                   Padding(
    //                     padding: EdgeInsets.only(left: 4),
    //                     child:
    //                         Icon(Icons.verified, color: Colors.red, size: 18),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             Container(
    //               margin: EdgeInsets.fromLTRB(
    //                   0.052 * wid, 0.012 * hei, 0.052 * wid, 0.012 * hei),
    //               child: Column(
    //                 children: [
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       const Text(
    //                         'Volunteers',
    //                         style: TextStyle(
    //                           fontFamily: 'Poppins',
    //                           fontSize: 16,
    //                           fontWeight: FontWeight.w500,
    //                         ),
    //                       ),
    //                       TextButton.icon(
    //                         style: ButtonStyle(
    //                           padding: MaterialStateProperty.all<EdgeInsets>(
    //                             EdgeInsets.fromLTRB(0.02 * wid, 0.012 * hei,
    //                                 0.02 * wid, 0.012 * hei),
    //                           ),
    //                         ),
    //                         onPressed: () {},
    //                         icon: const Icon(
    //                           Icons.arrow_forward,
    //                           color: Colors.red,
    //                           size: 14,
    //                         ),
    //                         label: const Text(
    //                           'View All',
    //                           style: TextStyle(
    //                             fontFamily: 'Poppins',
    //                             fontSize: 14,
    //                             fontWeight: FontWeight.w500,
    //                             color: Colors.red,
    //                           ),
    //                         ),

    //                       ),
    //                     ],
    //                   ),
    //                   SingleChildScrollView(
    //                     scrollDirection: Axis.horizontal,
    //                     child: Row(
    //                       children: const [
    //                         CircleAvatar(
    //                           backgroundColor: Colors.black,
    //                           radius: 30,
    //                           child: CircleAvatar(
    //                             radius: 28,
    //                             backgroundImage:
    //                                 AssetImage('assets/comprofile.png'),
    //                           ),
    //                         ),
    //                         SizedBox(width: 10),
    //                         CircleAvatar(
    //                           backgroundColor: Colors.black,
    //                           radius: 30,
    //                           child: CircleAvatar(
    //                             radius: 28,
    //                             backgroundImage:
    //                                 AssetImage('assets/comprofile.png'),
    //                           ),
    //                         ),
    //                         SizedBox(width: 10),
    //                         CircleAvatar(
    //                           backgroundColor: Colors.black,
    //                           radius: 30,
    //                           child: CircleAvatar(
    //                             radius: 28,
    //                             backgroundImage:
    //                                 AssetImage('assets/comprofile.png'),
    //                           ),
    //                         ),
    //                         SizedBox(width: 10),
    //                         CircleAvatar(
    //                           backgroundColor: Colors.black,
    //                           radius: 30,
    //                           child: CircleAvatar(
    //                             radius: 28,
    //                             backgroundImage:
    //                                 AssetImage('assets/comprofile.png'),
    //                           ),
    //                         ),
    //                         SizedBox(width: 10),
    //                         CircleAvatar(
    //                           backgroundColor: Colors.black,
    //                           radius: 30,
    //                           child: CircleAvatar(
    //                             radius: 28,
    //                             backgroundImage:
    //                                 AssetImage('assets/comprofile.png'),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   )
    //                 ],
    //               ),
    //             ),
    //             Container(
    //               margin: EdgeInsets.fromLTRB(
    //                   0.052 * wid, 0.012 * hei, 0.052 * wid, 0.012 * hei),
    //               child: Column(
    //                 children: [
    //                   Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       const Text(
    //                         'Donation History',
    //                         style: TextStyle(
    //                           fontFamily: 'Poppins',
    //                           fontSize: 16,
    //                           fontWeight: FontWeight.w500,
    //                         ),
    //                       ),
    //                       TextButton.icon(
    //                         style: ButtonStyle(
    //                           padding: MaterialStateProperty.all<EdgeInsets>(
    //                             EdgeInsets.fromLTRB(0.02 * wid, 0.012 * hei,
    //                                 0.02 * wid, 0.012 * hei),
    //                           ),
    //                         ),
    //                         onPressed: () {},
    //                         icon: const Icon(
    //                           Icons.arrow_forward,
    //                           color: Colors.red,
    //                           size: 14,
    //                         ),
    //                         label: const Text(
    //                           'View All',
    //                           style: TextStyle(
    //                             fontFamily: 'Poppins',
    //                             fontSize: 14,
    //                             fontWeight: FontWeight.w500,
    //                             color: Colors.red,
    //                           ),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   SingleChildScrollView(
    //                     scrollDirection: Axis.vertical,
    //                     child: Column(children: [Container()]),
    //                   )
    //                 ],
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ));
  }
}
