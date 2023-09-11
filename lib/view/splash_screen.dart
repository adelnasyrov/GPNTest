import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF0700FF),
                Color(0xFF000000),
              ],
            ),
          ),
          child: const Stack(
            children: [
              Positioned(
                top: 292,
                left: 43,
                child: Text(
                  'WEATHER\nSERVICE',
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 48,
                      color: Color(0xFFFFFFFF),
                      fontFamily: "Inter"),
                ),
              ),
              Positioned(
                bottom: 86,
                left: 0,
                right: 0,
                child: Center(
                    child: Text(
                      'dawn is coming soon',
                      style: TextStyle(fontWeight: FontWeight.w300,
                          fontSize: 24,
                          color: Color(0xFFFFFFFF),
                          fontFamily: "Inter"),
                    ),
                ),
              ),

            ],
          )),
    );
  }
}
