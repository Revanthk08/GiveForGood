// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:givelive/models/user_model.dart';
import 'package:givelive/screens/Login/opt_page.dart';
import 'package:givelive/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthProvider extends ChangeNotifier {
  bool _isSignedIn = false;
  bool get isSignedIn => _isSignedIn;
  bool _isloading = false;
  bool get isloading => _isloading;
  String? _uid;
  String get uid => _uid!;

  final FirebaseAuth _firebaseauth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  AuthProvider() {
    checkSignIn();
  }

  void checkSignIn() async {
    final SharedPreferences s = await SharedPreferences.getInstance();
    _isSignedIn = s.getBool("isSignedIn") ?? false;
    notifyListeners();
  }

  Future setSignIn() async {
    final SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("_isSignedIn", true);
    _isSignedIn = true;
    notifyListeners();
  }

  void verifyOtp(
      {required BuildContext context,
      required String verificationId,
      required String Userotp,
      required Function onSuccess}) async {
    _isloading = true;
    notifyListeners();
    try {
      PhoneAuthCredential creds = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: Userotp);
      User? user = (await _firebaseauth.signInWithCredential(creds)).user;
      if (user != null) {
        _uid = user.uid;
        onSuccess();
      }
      _isloading = false;
      notifyListeners();
    } on FirebaseAuthException catch (e) {
      _isloading = false;
      showSnackbar(context, e.message.toString());
      
      notifyListeners();
      // _isloading = false;
    }
  }

  void SignIn(BuildContext context, String phonenumber) async {
    try {
      print("aaya");
      await _firebaseauth.verifyPhoneNumber(
          phoneNumber: phonenumber,
          verificationCompleted:
              (PhoneAuthCredential phoneAuthCredential) async {
            await _firebaseauth.signInWithCredential(phoneAuthCredential);
          },
          verificationFailed: (error) {
            throw Exception(error.message);
          },
          codeSent: (verificationId, forceResendingToken) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        OtpPage(verificationId: verificationId)));
          },
          codeAutoRetrievalTimeout: (verificationId) {});
    } on FirebaseAuthException catch (e) {
      showSnackbar(context, e.message.toString());
    }
  }

  Future<bool> checkExistingUser() async {
    DocumentSnapshot snapshot =
        await _firebaseFirestore.collection("users").doc(_uid).get();
    if (snapshot.exists) {
      print("ok");
      return true;
    } else {
      print("notok");
      return false;
    }
  }

  void saveUserDatatoFirebase({
    required BuildContext context,
    required UserModel usermodel,
    required onSuccess,
  }) async {
    _isloading = true;
    notifyListeners();
    try {
      await _firebaseFirestore
          .collection("users")
          .doc(_uid)
          .set(usermodel.toMap())
          .then((value) {
        print(usermodel);
        onSuccess();
        _isloading = false;
        notifyListeners();
      });
    } on FirebaseAuthException catch (e) {
      showSnackbar(context, e.message.toString());
      _isloading = false;
      notifyListeners();
    }
  }
}
