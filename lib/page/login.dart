import 'package:e_commerce_jihad/page/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context)
        .size
        .width; // Mendapatkan ukuran layar device otomatis (responsive)

    TextEditingController userNameText = TextEditingController();
    TextEditingController passwordText = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              // Untuk mengatur Background halaman ============================
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.pink[200],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.white70,
                  ),
                )
              ],
            ),
            // komponen Login ================================================
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Your Future',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Furniture',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: screenWidth / 5,
                      height: 2,
                      color: Colors.pink,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.all(20),
                      width: screenWidth,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset:
                                const Offset(0, 3), // mengatur posisi bayangan
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
                            child: Text(
                              "Login First",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: TextField(
                              controller: userNameText,
                              decoration: const InputDecoration(
                                label: Text("Username"),
                                prefixIcon: Icon(Icons.person_2_sharp),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: TextField(
                              controller: passwordText,
                              decoration: const InputDecoration(
                                label: Text("Password"),
                                prefixIcon: Icon(Icons.key_outlined),
                                suffixIcon: Icon(Icons.remove_red_eye),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff666666)),
                                      onPressed: () {},
                                      child: Icon(Icons.wordpress),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue[700]),
                                      onPressed: () {},
                                      child: Icon(Icons.facebook),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 7),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue),
                                      onPressed: () {},
                                      child: Icon(Icons.telegram),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: screenWidth,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomePage();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 8, backgroundColor: Colors.pink[300]),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
