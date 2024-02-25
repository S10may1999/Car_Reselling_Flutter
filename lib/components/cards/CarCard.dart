import 'package:carseller/pages/DescriptionPage.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarCard extends StatefulWidget {
  String? imageUrl;
  String? carName;
  String? carPrice;
  CarCard({
    super.key,
    required this.imageUrl,
    required this.carName,
    required this.carPrice,
  });

  @override
  State<CarCard> createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16))),
      width: 165,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 100, top: 10),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: 100,
            width: 120,
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DescriptionPage(),
                  )),
              child: Image.asset(
                widget.imageUrl!,
              ),
            ),
          ),
          Text(
            widget.carName!,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 165,
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Buy",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Text("\$${widget.carPrice!}"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
