// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givelive/resuable/colors.dart';
import 'models.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int activetab = 0;
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: getbody(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            left: 0.02 * wid, bottom: 0.01 * hei, right: 0.02 * wid),
        child: getFooter(),
      ),
    );
  }

  Widget getbody() {
    return IndexedStack(index: activetab, children: pages);
  }

  Widget getFooter() {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0.01 * wid, 0, 0.01 * wid, 0.01 * hei),
      decoration: BoxDecoration(
        color: Color(0xffF1F1F1),
        borderRadius: BorderRadius.circular(50),
      ),
      height: 0.08 * hei,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.04 * wid),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(icons.length, (index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      activetab = index;
                    });
                  },
                  child: Container(
                    height: 0.035 * hei,
                    width: wid * 0.1,
                    child: SvgPicture.asset(
                      icons[index],
                      // color: activetab == index ? red : Colors.white,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                activetab == index
                    ? Container(
                        width: 7,
                        height: 2,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )
                    : Container(
                        width: 10,
                        height: 5,
                      ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
