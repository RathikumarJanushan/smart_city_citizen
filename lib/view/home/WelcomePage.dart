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
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  void _logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    // final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Menu",
          style: TextStyle(
            color: const Color.fromARGB(
                255, 255, 255, 255), // Black color for the text
            fontSize: 25, // Optional: Adjust the text size
            fontWeight: FontWeight.bold, // Optional: Make the text bold
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SurveyFeedbackModule()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.white, // White background for the button
                  foregroundColor: Colors.black, // Black text color
                  padding: EdgeInsets.zero, // No padding inside the button
                  minimumSize: Size(
                      100, 70), // Fixed size for square shape (width = height)
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Optional: Rounded corners
                  ),
                  elevation: 5, // Optional: Shadow for a lifted effect
                  shadowColor: Colors.grey
                      .withOpacity(0.4), // Optional: Customize shadow color
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center content inside button
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Align content vertically
                  children: [
                    SvgPicture.asset(
                      'assets/img/Report.svg', // Path to your SVG file
                      width: 24, // Set the width of the icon
                      height: 24, // Set the height of the icon
                    ),
                    SizedBox(width: 8), // Space between icon and text
                    Text(
                      "Report Issue",
                      style: TextStyle(
                        color: Colors.black, // Black color for the text
                        fontSize: 16, // Optional: Adjust the text size
                        fontWeight:
                            FontWeight.bold, // Optional: Make the text bold
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SurveyFeedbackModule()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.white, // White background for the button
                  foregroundColor: Colors.black, // Black text color
                  padding: EdgeInsets.zero, // No padding inside the button
                  minimumSize: Size(
                      100, 70), // Fixed size for square shape (width = height)
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Optional: Rounded corners
                  ),
                  elevation: 5, // Optional: Shadow for a lifted effect
                  shadowColor: Colors.grey
                      .withOpacity(0.4), // Optional: Customize shadow color
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center content inside button
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Align content vertically
                  children: [
                    SvgPicture.asset(
                      'assets/img/Feedback.svg', // Path to your SVG file
                      width: 24, // Set the width of the icon
                      height: 24, // Set the height of the icon
                    ),
                    SizedBox(width: 8), // Space between icon and text
                    Text(
                      "Survey & Feedback",
                      style: TextStyle(
                        color: Colors.black, // Black color for the text
                        fontSize: 16, // Optional: Adjust the text size
                        fontWeight:
                            FontWeight.bold, // Optional: Make the text bold
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ServiceTrackingModule()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.white, // White background for the button
                  foregroundColor: Colors.black, // Black text color
                  padding: EdgeInsets.zero, // No padding inside the button
                  minimumSize: Size(
                      100, 70), // Fixed size for square shape (width = height)
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Optional: Rounded corners
                  ),
                  elevation: 5, // Optional: Shadow for a lifted effect
                  shadowColor: Colors.grey
                      .withOpacity(0.4), // Optional: Customize shadow color
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center content inside button
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Align content vertically
                  children: [
                    SvgPicture.asset(
                      'assets/img/Service.svg', // Path to your SVG file
                      width: 24, // Set the width of the icon
                      height: 24, // Set the height of the icon
                    ),
                    SizedBox(width: 8), // Space between icon and text
                    Text(
                      "Track Service",
                      style: TextStyle(
                        color: Colors.black, // Black color for the text
                        fontSize: 16, // Optional: Adjust the text size
                        fontWeight:
                            FontWeight.bold, // Optional: Make the text bold
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.white, // White background for the button
                  foregroundColor: Colors.black, // Black text color
                  padding: EdgeInsets.zero, // No padding inside the button
                  minimumSize: Size(
                      100, 70), // Fixed size for square shape (width = height)
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Optional: Rounded corners
                  ),
                  elevation: 5, // Optional: Shadow for a lifted effect
                  shadowColor: Colors.grey
                      .withOpacity(0.4), // Optional: Customize shadow color
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center content inside button
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Align content vertically
                  children: [
                    SvgPicture.asset(
                      'assets/img/Alerts.svg', // Path to your SVG file
                      width: 24, // Set the width of the icon
                      height: 24, // Set the height of the icon
                    ),
                    SizedBox(width: 8), // Space between icon and text
                    Text(
                      "Alerts",
                      style: TextStyle(
                        color: Colors.black, // Black color for the text
                        fontSize: 16, // Optional: Adjust the text size
                        fontWeight:
                            FontWeight.bold, // Optional: Make the text bold
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.white, // White background for the button
                  foregroundColor: Colors.black, // Black text color
                  padding: EdgeInsets.zero, // No padding inside the button
                  minimumSize: Size(
                      100, 70), // Fixed size for square shape (width = height)
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Optional: Rounded corners
                  ),
                  elevation: 5, // Optional: Shadow for a lifted effect
                  shadowColor: Colors.grey
                      .withOpacity(0.4), // Optional: Customize shadow color
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center content inside button
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Align content vertically
                  children: [
                    SvgPicture.asset(
                      'assets/img/Map.svg', // Path to your SVG file
                      width: 24, // Set the width of the icon
                      height: 24, // Set the height of the icon
                    ),
                    SizedBox(width: 8), // Space between icon and text
                    Text(
                      "Map",
                      style: TextStyle(
                        color: Colors.black, // Black color for the text
                        fontSize: 16, // Optional: Adjust the text size
                        fontWeight:
                            FontWeight.bold, // Optional: Make the text bold
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.white, // White background for the button
                  foregroundColor: Colors.black, // Black text color
                  padding: EdgeInsets.zero, // No padding inside the button
                  minimumSize: Size(
                      100, 70), // Fixed size for square shape (width = height)
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Optional: Rounded corners
                  ),
                  elevation: 5, // Optional: Shadow for a lifted effect
                  shadowColor: Colors.grey
                      .withOpacity(0.4), // Optional: Customize shadow color
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center content inside button
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Align content vertically
                  children: [
                    SvgPicture.asset(
                      'assets/img/Profile.svg', // Path to your SVG file
                      width: 24, // Set the width of the icon
                      height: 24, // Set the height of the icon
                    ),
                    SizedBox(width: 8), // Space between icon and text
                    Text(
                      "Profile",
                      style: TextStyle(
                        color: Colors.black, // Black color for the text
                        fontSize: 16, // Optional: Adjust the text size
                        fontWeight:
                            FontWeight.bold, // Optional: Make the text bold
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.white, // White background for the button
                  foregroundColor: Colors.black, // Black text color
                  padding: EdgeInsets.zero, // No padding inside the button
                  minimumSize: Size(
                      100, 70), // Fixed size for square shape (width = height)
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Optional: Rounded corners
                  ),
                  elevation: 5, // Optional: Shadow for a lifted effect
                  shadowColor: Colors.grey
                      .withOpacity(0.4), // Optional: Customize shadow color
                ),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center content inside button
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Align content vertically
                  children: [
                    SvgPicture.asset(
                      'assets/img/settings.svg', // Path to your SVG file
                      width: 24, // Set the width of the icon
                      height: 24, // Set the height of the icon
                    ),
                    SizedBox(width: 8), // Space between icon and text
                    Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.black, // Black color for the text
                        fontSize: 16, // Optional: Adjust the text size
                        fontWeight:
                            FontWeight.bold, // Optional: Make the text bold
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
