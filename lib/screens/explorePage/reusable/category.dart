// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:givelive/resuable/colors.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({Key? key, required this.categories}) : super(key: key);
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.01 * wid),
      padding: EdgeInsets.symmetric(vertical: 0.009 * hei),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.01 * wid),
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 0.05 * wid),
                decoration: BoxDecoration(
                    border: Border.all(color: red, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    categories[index],
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ),
                )),
          );
        },
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
