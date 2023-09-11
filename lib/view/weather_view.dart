import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gpn_test/controller/weather_controller.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({super.key});

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  WeatherController _controller = WeatherController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF0700FF), Color(0xFF000000)])),
        ),
        Positioned(
            top: 24,
            left: 24,
            right: 24,
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/vectors/location.svg',
                          height: 24, width: 24),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        _controller.getLocation(),
                        style: const TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        "assets/vectors/Ellipse.png",
                        height: 180,
                        width: 180,
                      ),
                      Image.asset(
                        _controller.getBigPicture(),
                        height: 180,
                        width: 180,
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 24, right: 24),
                    child: Text(
                      _controller.getTemperature(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "Ubuntu",
                          fontWeight: FontWeight.w500,
                          fontSize: 64),
                    ),
                  ),
                  Text(
                    _controller.getCondition(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                  ),

                ],
              ),
            ))
      ],
    ));
  }
}
