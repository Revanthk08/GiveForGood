import 'package:flutter/material.dart';
import 'package:givelive/resuable/colors.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    TabController s = TabController(length: 2, vsync: this);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 0.05 * hei,
            margin: EdgeInsets.only(left: 0.03 * wid, top: 0.05 * hei),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(5)),
                child: TabBar(
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(5), color: red),
                    controller: s,
                    isScrollable: true,
                    tabs: [
                      Text(
                        "Individual",
                        style: TextStyle(
                            fontFamily: "Poppins", fontSize: 0.015 * hei),
                      ),
                      Text(
                        "Organization",
                        style: TextStyle(
                            fontFamily: "Poppins", fontSize: 0.015 * hei),
                      )
                    ]),
              ),
            ),
          )
        ],
      )),
    );
  }
}
