import 'package:carseller/components/cards/CarCard.dart';
import 'package:carseller/components/cards/Collections.dart';
import 'package:carseller/components/cards/OfferSection.dart';
import 'package:carseller/components/dividerHeading/DividerHeading.dart';
import 'package:carseller/components/searchsection/SearchSection.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SearchSection(),
              SizedBox(
                height: 10,
              ),
              DividerHeading(
                headingToShow: "Featured Vehical",
                leftSideHeading: "Featured Vehical",
                rightSideHeading: "See all",
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //featured vehical list
                  CarCard(
                      imageUrl: "assets/images/bmw.png",
                      carName: "BMW X1",
                      carPrice: "12000"),
                  CarCard(
                    imageUrl: "assets/images/mercedes.png",
                    carName: "Mercedes Benz",
                    carPrice: "13000",
                  )
                ],
              ),
              SizedBox(
                height: 2,
              ),
              DividerHeading(
                headingToShow: "Offers",
                leftSideHeading: "Offers",
                rightSideHeading: "See all",
              ),
              SizedBox(
                height: 2,
              ),
              OfferSection(),
              Collections()
            ],
          )),
    );
  }
}
