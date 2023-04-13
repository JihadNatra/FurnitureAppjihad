import 'package:e_commerce_jihad/widget/categorycard.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(150),
                      child: Image.asset(
                        'assets/Jihad.jpeg',
                        height: 150,
                      ),
                    ),
                    minRadius: 60,
                  ),
                ),
                const Text(
                  "Jihad Natra Situmorang",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Mobile Application Developer",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 30),
                GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  children: [
                    CategoryCard(
                        icon: 'assets/plant_white_bg.png',
                        titleCategory: "History"),
                    CategoryCard(
                        icon: 'assets/lamp_white_bg.png',
                        titleCategory: "Market"),
                    CategoryCard(
                        icon: 'assets/chair_white_bg.png',
                        titleCategory: "Supplier"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
