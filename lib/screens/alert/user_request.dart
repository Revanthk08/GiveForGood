import 'package:flutter/material.dart';
import 'package:givelive/resuable/colors.dart';
import 'package:givelive/screens/explorePage/reusable/Appbar.dart';

class carddetails extends StatefulWidget {
  const carddetails({super.key});
  @override
  State<carddetails> createState() => _carddetailsState();
}

class _carddetailsState extends State<carddetails> {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'User',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.black),
              ),
              TextSpan(
                text: 'Request',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.red),
              ),
            ],
          ),
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          padding: EdgeInsets.only(left: 0.02 * wid),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.red,
            size: 35,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                  0.05 * wid, 0.01 * hei, 0.05 * wid, 0.03 * hei),
              height: 0.3 * hei,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.76),
                  color: Colors.grey.shade200),
            )
          ]),
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
