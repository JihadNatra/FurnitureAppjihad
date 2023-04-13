import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  CategoryCard({
    super.key,
    required this.icon,
    required this.titleCategory,
  });

  String icon;
  String titleCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 80,
        width: 120,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // mengatur posisi bayangan
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(icon),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  const SizedBox(width: 5),
                  Text(titleCategory),
                  const Spacer(),
                  const Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
