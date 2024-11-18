import 'package:flutter/material.dart';
import 'package:smart_city_citizen/view/login/welcome_view.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StarupViewState();
}

class _StarupViewState extends State<StartupView> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
    // Delay for 5 seconds
    await Future.delayed(const Duration(seconds: 5));
    welcomePage();
  }

  void welcomePage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const WelcomeView()));
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: media.width,
        height: media.height,
        color: Colors.white, // Set background color to white
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/img/logo.png", // Path to your logo
              width: media.width * 0.9, // Adjust width as needed
              height: media.width * 0.9, // Adjust height as needed
            ),
          ],
        ),
      ),
    );
  }
}
