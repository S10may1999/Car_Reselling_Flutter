import 'package:carseller/components/cards/CarCard.dart';
import 'package:flutter/material.dart';

class SeeAllPage extends StatefulWidget {
  String heading;
  SeeAllPage({super.key, required this.heading});

  @override
  State<SeeAllPage> createState() => _SeeAllPageState();
}

class _SeeAllPageState extends State<SeeAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_outlined, size: 15),
        ),
        title: Center(
            child: Text(
          widget.heading,
          style: const TextStyle(
            fontSize: 15,
          ),
        )),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            for (int i = 0; i <= 10; i++)
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 6.0,
                      left: 8.0,
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    child: CarCard(
                        imageUrl: "assets/images/bmw.png",
                        carName: "BMW x1",
                        carPrice: "\$10000"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    child: CarCard(
                        imageUrl: "assets/images/mercedes.png",
                        carName: "Mercedes Sedan",
                        carPrice: "\$12000"),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
