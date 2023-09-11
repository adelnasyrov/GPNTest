import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gpn_test/controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginController _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 26,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16, left: 24, right: 24),
              child: Text(
                "Вход",
                style: TextStyle(
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    color: Color(0xFF2B2D33)),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(bottom: 11, left: 24, right: 24),
              child: Text(
                "Введите данные для входа",
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xFF8799A5)),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 24, left: 24, right: 24),
                child: TextField(
                  controller: _controller.email,
                  cursorColor: const Color(0xFFFF585D),
                  decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                        fontSize: 17,
                        color: Color(0xFF8799A5)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF0700FF)),
                    ),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 24, right: 24, bottom: 8),
                child: Stack(
                  children: [
                    TextField(
                      controller: _controller.password,
                      obscureText: _controller.text(),
                      cursorColor: const Color(0xFFFF585D),
                      decoration: const InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        labelText: 'Пароль',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            fontSize: 17,
                            color: Color(0xFF8799A5)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF0700FF)),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _controller.iconClick();
                          });
                        },
                        child: SvgPicture.asset(
                          _controller.icon()
                              ? 'assets/vectors/tosee.svg'
                              : 'assets/vectors/eye-off.svg',
                        ),
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: ElevatedButton(
                onPressed: () {
                  _controller.signIn();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0700FF), // Blue color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24), // 24 pixel radius
                  ),
                ),
                child: const SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Войти',
                      style: TextStyle(
                        color: Colors.white, // White text color
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
