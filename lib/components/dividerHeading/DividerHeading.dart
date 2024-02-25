import 'package:carseller/pages/seeAll.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DividerHeading extends StatefulWidget {
  String? leftSideHeading;
  String? rightSideHeading;
  String? headingToShow;

  DividerHeading({
    super.key,
    required this.leftSideHeading,
    required this.rightSideHeading,
    this.headingToShow,
  });

  @override
  State<DividerHeading> createState() => _DividerHeadingState();
}

class _DividerHeadingState extends State<DividerHeading> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            widget.leftSideHeading!,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SeeAllPage(
                        heading: widget.headingToShow!,
                      ))),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              widget.rightSideHeading!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
