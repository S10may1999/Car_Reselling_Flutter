import 'package:flutter/material.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search Vehical",
                  contentPadding:
                      const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  )),
            ),
          ),
          SizedBox(
            width: 2,
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10, left: 5),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(52)),
            child: Image.asset(
              'assets/icons/filter-icon.png',
            ),
          )
        ],
      ),
    );
  }
}
