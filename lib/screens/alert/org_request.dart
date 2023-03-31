import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:givelive/resuable/colors.dart';
import 'package:givelive/screens/explorePage/reusable/Appbar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class carddetails2 extends StatefulWidget {
  const carddetails2({super.key});

  @override
  State<carddetails2> createState() => _carddetails2State();
}

class _carddetails2State extends State<carddetails2> {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: hei * 0.07,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Organization',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black),
              ),
              TextSpan(
                text: 'Request',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.red),
              ),
            ],
          ),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          padding: EdgeInsets.only(left: 0.02 * wid),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red,
            size: 0.03 * hei,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(
                    0.052 * wid, 0.012 * hei, 0.052 * wid, 0.012 * hei),
                height: 0.23 * hei,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.76),
                  image: const DecorationImage(
                    image: AssetImage('assets/Rectangle 43.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(
                    0.052 * wid, 0.01 * hei, 0.052 * wid, 0),
                height: 0.03 * hei,
                child: const Text(
                  'Food donation camp',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(0.052 * wid, 0, 0.052 * wid, 0),
                height: 0.03 * hei,
                child: Row(
                  children: [
                    Text(
                      'Thaagam Foundation',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 0.02 * hei,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.fromLTRB(
                    0.05 * wid, 0.0 * hei, 0.05 * wid, 0.01 * hei),
                height: 0.02 * hei,
                child: Row(children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 3, 0),
                    child: Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 0.02 * hei,
                    ),
                  ),
                  Text(
                    'Chennai, India',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 0.015 * hei,
                      color: Colors.red,
                    ),
                  ),
                ]),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    0.05 * wid, 0.01 * hei, 0.05 * wid, 0.01 * hei),
                height: 0.115 * hei,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 50,
                      offset: const Offset(5, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0.02 * wid, 0.022 * hei, 0, 0.02 * hei),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '10 ',
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 0.015 * hei,
                                      color: Colors.red),
                                ),
                                TextSpan(
                                  text: 'People Left',
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 0.015 * hei,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '0 Adults, 10 Children',
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 0.015 * hei,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 14),
                                child: Text(
                                  'In Progress',
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    LinearPercentIndicator(
                      width: wid * 0.89,
                      lineHeight: 5.0,
                      percent: 0.5,
                      backgroundColor: Colors.black38,
                      progressColor: Colors.red,
                      animation: true,
                      animationDuration: 2000,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    0.05 * wid, 0.02 * hei, 0.05 * wid, 0.01 * hei),
                child: Text(
                  'Homeless children living on the streets of India face a bleak future. Begging and picking garbage are their only options for survival. Empowering these children with education will improve their attitude on life and help them to escape poverty and homelessness. Give these impoverished children a chance to succeed by providing them with an education.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 0.015 * hei,
                    color: Colors.black,
                  ),
                ),
              ),
              Container()
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 0.05 * hei),
        child: Container(
          margin: EdgeInsets.fromLTRB(
              0.052 * wid, 0.0 * hei, 0.052 * wid, 0.01 * hei),
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(red)),
            child: Text('Takeover',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 0.016 * hei,
                  color: Colors.white,
                )),
          ),
        ),
      ),
    );
  }
}
