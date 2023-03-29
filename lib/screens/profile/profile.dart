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
                            indicator: BoxDecoration(
                                color: red,
                                borderRadius: BorderRadius.circular(10)),
                            tabs: [
                              Text(
                                "Photos",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 0.018 * hei,
                                    color: Colors.white),
                              ),
                              Text(
                                "Videos",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 0.02 * hei,
                                    color: Colors.black),
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
      padding: EdgeInsets.only(left: 0.03 * wid, top: 0.015 * hei),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // height: 0.1 * hei,
              Container(
                child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/Ellipse 8.png')),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0.2 * hei, 0, 0),
                    child: Text(
                      'Jenna Ortega',
                      style: TextStyle(
                          fontSize: 0.02 * hei,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    child: Text(
                      'OMR Navulur, 25th Lane, Chenn...',
                      style: TextStyle(
                          fontSize: 0.01 * hei,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 0.035 * wid),
            height: hei * 0.055,
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Settings()));
                },
                icon: SvgPicture.asset('assets/icons/settings.svg',
                    fit: BoxFit.fitHeight)),
          )
        ],
      ),
    ),
  );
}
