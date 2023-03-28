
import 'package:flutter/material.dart';
import 'package:givelive/navtab.dart';
import 'package:givelive/screens/alert/alert.dart';
import 'package:givelive/screens/community/communitypage.dart';
import 'package:givelive/screens/explorePage/explore.dart';
import 'package:givelive/screens/profile/profile.dart';

import 'screens/Homepage/detailspage.dart';

List <Widget> pages = [DetailsPage(), explore(), alert(), CommunityPage(), ProfilePage()];

List icons = [
  'assets/icons/homeicon.svg',
  'assets/icons/exploreicon.svg',
  'assets/icons/alerticon.svg',
  'assets/icons/communityicon.svg',
  'assets/Vector.svg'
];

