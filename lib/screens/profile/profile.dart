import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:givelive/resuable/colors.dart';
import 'package:givelive/screens/profile/photos.dart';
import 'package:givelive/screens/profile/profile_settings.dart';
import 'package:givelive/screens/profile/videos.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
              headerSliverBuilder: (context, _) {
                return [
                  SliverList(
                      delegate:
                          SliverChildListDelegate([profilepagewidget(context)]))
                ];
              },
              body: Column(
                children: [
                  Material(
                    child: Container(
                      height: 0.06 * hei,
                      child: Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 0.03 * wid, vertical: 0.01 * hei),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: TabBar(
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black,
                            indicator: BoxDecoration(
                                color: red,
                                borderRadius: BorderRadius.circular(10)),
                            tabs: [
                              Text(
                                "Photos",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 0.018 * hei,
                                ),
                              ),
                              Text(
                                "Videos",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 0.02 * hei,
                                ),
                              )
                            ]),
                      ),
                    ),
                  ),
                  Expanded(
                      child: TabBarView(children: [photosview(), videoview()]))
                ],
              )),
        ),
      ),
    );
  }
}

Widget profilepagewidget(BuildContext context) {
  double hei = MediaQuery.of(context).size.height;
  double wid = MediaQuery.of(context).size.width;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 0.03 * wid),
    child: Container(
      width: double.infinity,
      height: 0.3 * hei,
      padding: EdgeInsets.only(left: 0.03 * wid),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 0.05 * hei),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 0.01 * wid),
                      child: CircleAvatar(
                          radius: 0.14 * wid,
                          backgroundImage: AssetImage('assets/Ellipse 8.png')),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(0.01 * wid, 0.01 * hei, 0, 0),
                          child: Text(
                            'Jenna Ortega',
                            style: TextStyle(
                                fontSize: 0.025 * hei,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 0.02 * wid),
                          child: Text(
                            'jenna123@gmail.com',
                            style: TextStyle(
                              // backgroundColor: Colors.amber,
                              fontSize: 0.015 * hei,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false,
                              applyHeightToLastDescent: false,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Edit profile',
                            style: TextStyle(
                              // backgroundColor: Colors.amber,
                              fontSize: 0.015 * hei,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              color: red,
                            ),
                            textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: true,
                              applyHeightToLastDescent: true,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(right: 0.0 * wid),
                  height: hei * 0.055,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Settings()));
                      },
                      icon: SvgPicture.asset('assets/icons/settings.svg',
                          fit: BoxFit.fitHeight)),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
