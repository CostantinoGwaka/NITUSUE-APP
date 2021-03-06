import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:pixel_perfect/pixel_perfect.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nitusue/splash/playerSplash_ui.dart';
import 'package:nitusue/auth/signIn_ui.dart';
import 'package:nitusue/auth/signUp_ui.dart';
import 'package:get/get.dart';

const iconsPath = 'assets/icons/';
const imagePath = 'assets/images/';
// void main() {
//   runApp(GetMaterialApp(MyApp()));
// }
void main() => runApp(GetMaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        unselectedWidgetColor: Colors.grey[600],
        fontFamily: "ComicSans",
      ),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfileScreen();
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222232),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 15),
          color: Color(0xff222232),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(50, 37, 35, 0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PlayerSplash(),
                    SizedBox(
                      height: 78.8,
                    ),
                    SizedBox(
                      width: 253,
                      child: Text(
                        "Jumba la washindani",
                        style:
                            GoogleFonts.sourceSansPro(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 14)),
                    SizedBox(
                      width: 253,
                      child: Text(
                        "Ndani kuna washindani wengi ambao wako tayari kushindana kwa ajili ya pesa yao.\nUnasubiri nini? Karibu kwa washindani!",
                        style: GoogleFonts.sourceSansPro(
                            color: Color(0xff65656b), fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 25)),
                    Row(
                      children: [
                        Container(
                          width: 199,
                          height: 63,
                          child: TextButton(
                            onPressed: () {
                              Get.to(() => SignIn());
                            },
                            child: Text(
                              'Ingia',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            style: TextButton.styleFrom(
                              primary: Colors.purple,
                              backgroundColor: Color(0xff246bfd),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: TextButton(
                            onPressed: () {
                              Get.to(() => SignUp());
                            },
                            child: Text(
                              'Jisajili',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
