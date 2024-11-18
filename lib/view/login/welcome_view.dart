import 'package:flutter/material.dart';
import 'package:smart_city_citizen/common/color_extension.dart';
import 'package:smart_city_citizen/common_widget/round_button.dart';
import 'package:smart_city_citizen/view/login/login_view.dart';
import 'package:smart_city_citizen/view/login/sing_up_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: media.width * 0.5,
                ),
                Text(
                  "Smart Rakyat",
                  style: TextStyle(
                    fontSize: media.width * 0.1, // Adjust font size as needed
                    color: Color.fromARGB(255, 15, 15, 15),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Image.asset(
              "assets/img/logo.png", // Path to your logo
              width: media.width * 0.6, // Adjust width as needed
              height: media.width * 0.6, // Adjust height as needed
            ),
            SizedBox(
              height: media.width * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Login",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: media.width * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Sigin up",
                type: RoundButtonType.textPrimary,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpView(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
