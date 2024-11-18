import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_city_citizen/common/color_extension.dart';
import 'package:smart_city_citizen/view/home/AlertsNotificationModule.dart';
import 'package:smart_city_citizen/view/home/MapIntegrationModule.dart';
import 'package:smart_city_citizen/view/home/ReportIssueModule.dart';
import 'package:smart_city_citizen/view/home/ServiceTrackingModule.dart';
import 'package:smart_city_citizen/view/home/SurveyFeedbackModule.dart';
import 'package:smart_city_citizen/view/home/SettingsPage.dart';
import 'package:smart_city_citizen/view/home/UserProfilePage.dart';
// Import your color extension file

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  void _logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return DefaultTabController(
      length: 7, // Updated length to 7
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Welcome, ${user?.displayName ?? 'User'}",
            style: TextStyle(
              color: Colors.white, // Set the text color to white
            ),
          ),
          backgroundColor: TColor.primary, // Use custom primary color
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () => _logout(context),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                TColor.white, // Use custom white color
                TColor.secondaryText, // Use custom secondary text color
                TColor.primaryText, // Use custom primary text color
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const TabBarView(
            children: [
              ReportIssueModule(),
              SurveyFeedbackModule(),
              ServiceTrackingModule(),
              AlertsNotificationModule(),
              MapIntegrationModule(),
              UserProfilePage(),
              SettingsPage(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: TColor.primary, // Use custom primary color
          child: TabBar(
            indicator: BoxDecoration(
              color: TColor.secondaryText, // Use custom secondary text color
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            labelColor: TColor.white, // Use custom white color
            unselectedLabelColor:
                TColor.placeholder, // Use custom placeholder color
            tabs: const [
              Tab(icon: Icon(Icons.report_problem), text: "Report Issue"),
              Tab(icon: Icon(Icons.feedback), text: "Survey & Feedback"),
              Tab(icon: Icon(Icons.track_changes), text: "Track Service"),
              Tab(icon: Icon(Icons.notifications), text: "Alerts"),
              Tab(icon: Icon(Icons.map), text: "Map"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ],
          ),
        ),
      ),
    );
  }
}

// Define your additional modules as before
