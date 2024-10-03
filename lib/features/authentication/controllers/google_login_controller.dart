import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:interior_coffee/navigation_menu.dart';

class GoogleLoginController {
  signInWithGoogle() async {
    
    await GoogleSignIn().signOut();

    final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication googleAuth = await userAccount!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
    if(userCredential.user != null){
      Navigator.of(Get.context!).push(MaterialPageRoute(
        builder: (context) => NavigationMenu(),
      ));
    }
    
}
}