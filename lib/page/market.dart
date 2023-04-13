import 'package:e_commerce_jihad/page/login.dart';
import 'package:flutter/material.dart';
import '../widget/categorycard.dart';

// ignore: must_be_immutable
class MarketPage extends StatelessWidget {
  MarketPage({super.key});

  List item = [
    "Elegant Lamp",
    "Traditional Chair",
    "Wooden Chair",
    "Cactus",
    "Beach Beautifull",
    "Architectural",
  ];

  List price = [
    "10",
    "90",
    "200",
    "15",
    "10",
    "300",
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: const Text("Discover"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian Search Bar ================================================
            Container(
              height: 50,
              width: screenWidth,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              color: Colors.pink[200],
              child: Container(
                height: 20,
                width: screenWidth,
                padding: const EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "What are you looking for ?",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 9),
                  ),
                ),
              ),
            ),
            // Bagian Konten ===================================================
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // category section =========================================
                  const Text(
                    "Category",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryCard(
                            icon: 'assets/plant_white_bg.png',
                            titleCategory: "Plant"),
                        CategoryCard(
                            icon: 'assets/lamp_white_bg.png',
                            titleCategory: "Lamp"),
                        CategoryCard(
                            icon: 'assets/chair_white_bg.png',
                            titleCategory: "Chair"),
                      ],
                    ),
                  ),
                  // item section ============================================
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Hot Item',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3 / 4,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 200,
                                width: 400,
                                child: Image.asset(
                                  "assets/favorite_img_${index + 1}.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 10,
                                    ),
                                    width: double.infinity,
                                    height: 50,
                                    color: Colors.black.withOpacity(0.6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            item[index],
                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Text(
                                                '\$ ${price[index]}',
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              const Spacer(),
                                              const Icon(
                                                Icons.favorite_border_rounded,
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[300],
        child: Column(
          children: [
            SizedBox(height: statusBarHeight),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    'assets/Jihad.jpeg',
                    height: 70,
                    width: 70,
                  ),
                ),
              ),
              title: Text('Jihad Natra S'),
              subtitle: Text('1207070061'),
              trailing: Text(
                'Owner',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            const Spacer(),
            ListTile(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              },
              title: const Text("Log out"),
              leading: const Icon(Icons.logout),
            )
          ],
        ),
      ),
    );
  }
}
