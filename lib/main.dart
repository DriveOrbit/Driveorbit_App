import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MileageScreen(),
    );
  }
}

class MileageScreen extends StatefulWidget {
  @override
  _MileageScreenState createState() => _MileageScreenState();
}

class _MileageScreenState extends State<MileageScreen> {
  bool isFullTank = true;
  TextEditingController mileageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Clickable Mileage Input
            GestureDetector(
              onTap: () {
                // Focus on input field when tapped
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: mileageController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    hintText: "Enter your current mileage (KM)",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Clickable "Take a Photo" Section
            GestureDetector(
              onTap: () {
                // Implement camera functionality here
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera_alt, color: Colors.black),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Take a photo of dashboard",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Please take a clear photo",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),

            // Fuel Status Question
            Text(
              "What is your current fuel status?",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                foreground: Paint()
                  ..shader = LinearGradient(
                    colors: [Colors.blueAccent, Colors.purpleAccent],
                  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
              ),
            ),
            SizedBox(height: 15),

            // Fuel Status Selector
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                fuelStatusOption("Full tank", true),
                fuelStatusOption("Need to tank full", false),
              ],
            ),
            SizedBox(height: 30),

            // Next button
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  // Implement navigation or next action
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white24,
                  ),
                  child: Icon(Icons.arrow_forward, color: Colors.white, size: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget fuelStatusOption(String text, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFullTank = isSelected;
        });
      },
      child: Row(
        children: [
          Icon(
            Icons.water_drop,
            color: isSelected ? Colors.green : Colors.white,
          ),
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: isSelected ? Colors.green : Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
