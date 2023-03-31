// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types
import 'package:flutter/foundation.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:givelive/screens/explorePage/reusable/Appbar.dart';
import 'package:givelive/screens/explorePage/reusable/category.dart';
import 'package:givelive/screens/explorePage/reusable/header.dart';
import 'package:givelive/navtab.dart';
import '../../resuable/colors.dart';

class explore extends StatelessWidget {
  const explore({super.key});

  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                customappbar(),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: persistentheader(
                    child: CategoryBar(categories: [
                      '#donate',
                      '#givingback',
                      '#charity',
                      '#helpingothers',
                      '#dogood'
                    ]),
                  ),
                ),
                SliverStaggeredGrid.countBuilder(
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    crossAxisCount: 2,
                    staggeredTileBuilder: (int index) {
                      int moddedIndex = index % 20;
                      int cXCellcount = moddedIndex == 11 ? 2 : 1;
                      double xCellcount = 1;
                      if (moddedIndex == 2 || moddedIndex == 11) {
                        xCellcount = 2;
                      }
                      return StaggeredTile.count(cXCellcount, xCellcount);
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.01 * wid, vertical: 0.001 * hei),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              child: Image.network(
                                "https://source.unsplash.com/random?sig=$index",
                                fit: BoxFit.fill,
                              )
                            )),
                      );
                    },
                    itemCount: 20)
              ],
            ),
          )
        ],
      )),
    );
  }
}
