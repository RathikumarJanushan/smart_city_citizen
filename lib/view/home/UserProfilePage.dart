import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "User Profile",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Name: ${user?.displayName ?? 'No name'}",
              style: const TextStyle(
                  color:
                      Colors.black87), // Adjust color to match the background
            ),
            Text(
              "Email: ${user?.email ?? 'No email'}",
              style: const TextStyle(
                  color:
                      Colors.black87), // Adjust color to match the background
            ),
          ],
        ),
      ),
    );
  }
}
