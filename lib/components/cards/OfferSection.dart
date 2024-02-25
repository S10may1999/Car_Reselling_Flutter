import 'package:flutter/material.dart';

class OfferSection extends StatefulWidget {
  const OfferSection({super.key});

  @override
  State<OfferSection> createState() => _OfferSectionState();
}

class _OfferSectionState extends State<OfferSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              offset: Offset(.7, .7),
              blurRadius: BorderSide.strokeAlignOutside,
              spreadRadius: BorderSide.strokeAlignOutside,
            )
          ]),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            SizedBox(
              height: 10,
              child: Padding(
                padding: const EdgeInsets.only(left: 270, top: 10),
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .95,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 120,
                  width: 120,
                  child: Image.asset("assets/images/bmw.png"),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "BMW X1",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * .95,
              child: FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Buy",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text("\$12000"),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
