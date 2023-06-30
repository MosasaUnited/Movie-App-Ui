import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app_ui/components/custom_outline.dart';
import 'package:movie_app_ui/constants.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.1,
              left: -88,
              child: Container(
                height: 166,
                width: 166,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kPinkColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                  child: Container(
                    height: 166,
                    width: 166,
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.3,
              right: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Constants.kGreenColor,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                  child: Container(
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.07,
                ),
                CustomOutline(
                  strokeWidth: 4,
                  radius: screenWidth * .8,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Constants.kPinkColor,
                      Constants.kPinkColor.withOpacity(0),
                      Constants.kGreenColor.withOpacity(.1),
                      Constants.kGreenColor,
                    ],
                    stops: [.2, .4, .6, 1],
                  ),
                  width: screenWidth * .8,
                  height: screenHeight * .8,
                  padding: EdgeInsets.all(4),
                  child: Container(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
