import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:givelive/resuable/colors.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    final padding = MediaQuery.of(context).viewPadding;
    print('Applied padding: $padding');

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(
                    0.038 * wid, 0.03 * hei, 0.038 * wid, 0.03 * hei),
                height: 0.05 * hei,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200),
                child: TextField(
                  style: const TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                      fontSize: 18),
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 0.03 * hei,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 0.6 * hei,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(0.05 * wid, 0, 0, 0),
                          child: Icon(
                            Icons.people,
                            color: red,
                          ),
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(0.04 * wid, 0, 0, 0),
                          child: const Text(
                            'Create a Community',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(0.05 * wid, 0, 0, 0),
                          child: Icon(
                            Icons.notifications,
                            color: red,
                          ),
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(0.04 * wid, 0, 0, 0),
                          child: const Text(
                            'Notifications',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(0.05 * wid, 0, 0, 0),
                          child: Icon(
                            Icons.attach_money,
                            color: red,
                          ),
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(0.04 * wid, 0, 0, 0),
                          child: const Text(
                            'My Donations',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(0.05 * wid, 0, 0, 0),
                          child: Icon(
                            Icons.favorite,
                            color: red,
                          ),
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(0.04 * wid, 0, 0, 0),
                          child: const Text(
                            'Liked Posts',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(0.05 * wid, 0, 0, 0),
                          child: Icon(
                            Icons.bookmark,
                            color: red,
                          ),
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(0.04 * wid, 0, 0, 0),
                          child: const Text(
                            'Saved',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(0.05 * wid, 0, 0, 0),
                          child: Icon(
                            Icons.headset_mic,
                            color: red,
                          ),
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(0.04 * wid, 0, 0, 0),
                          child: const Text(
                            'Help',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(0.05 * wid, 0, 0, 0),
                          child: Icon(
                            Icons.info,
                            color: red,
                          ),
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(0.04 * wid, 0, 0, 0),
                          child: const Text(
                            'About',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(0.05 * wid, 0, 0, 0),
                          child: Icon(
                            Icons.dark_mode,
                            color: red,
                          ),
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(0.04 * wid, 0, 0, 0),
                          child: const Text(
                            'Theme',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.2 * hei,
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(0.05 * wid, 0, 0, 0),
                          child: Icon(
                            Icons.logout,
                            color: red,
                          ),
                        ),
                        Container(
                          height: 50,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.fromLTRB(0.04 * wid, 0, 0, 0),
                          child: TextButton(
                            child: Text(
                              'Log out',
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            onPressed: () {
                              FirebaseAuth.instance.signOut();
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
