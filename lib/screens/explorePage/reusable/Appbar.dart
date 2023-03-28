// ignore_for_file: file_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:givelive/resuable/colors.dart';

class customappbar extends StatelessWidget {
  const customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      centerTitle: false,
      elevation: 0,
      title: Container(
        height: 0.05 * hei,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200),
        child: TextField(
          style: const TextStyle(
              fontFamily: "Poppins-Bold",
              fontWeight: FontWeight.normal,
              fontSize: 18),
          decoration: InputDecoration(
              hintText: "Search",
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 0.03 * hei,
              )),
        ),
      ),
    );
  }
}
