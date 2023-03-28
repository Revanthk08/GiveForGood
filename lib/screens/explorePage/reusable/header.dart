// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class persistentheader extends SliverPersistentHeaderDelegate {
  final Widget child;
  persistentheader({required this.child});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      height: 50,
      child: child,
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
