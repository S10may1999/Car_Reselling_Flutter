import 'package:carseller/global/GlobalVar.dart';
import 'package:carseller/pages/CartPage.dart';
import 'package:carseller/pages/FavPage.dart';
import 'package:carseller/pages/HomePage.dart';
import 'package:carseller/pages/ProfilePage.dart';
import 'package:flutter/material.dart';

class CommonPage extends StatefulWidget {
  const CommonPage({super.key});

  @override
  State<CommonPage> createState() => _CommonPageState();
}

class _CommonPageState extends State<CommonPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> pagesList = [
      const HomePage(),
      const CartPage(),
      const FavPage(),
      const ProfilePage()
    ];

    return Scaffold(
      appBar: AppBar(
          title: ListTile(
        leading: Icon(Icons.menu),
        title: Center(
            child: Text(
          "CarSeller",
          style: TextStyle(fontSize: 25, color: Colors.green),
        )),
        trailing: CircleAvatar(
          radius: 16,
          backgroundColor: Colors.black,
        ),
      )),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  offset: Offset(1, 1),
                  blurRadius: BorderSide.strokeAlignOutside,
                  spreadRadius: BorderSide.strokeAlignOutside)
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(
            selectedItemColor: Colors.white,
            backgroundColor: Colors.green,
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedItem,
            elevation: 0,
            onTap: (index) {
              setState(() {
                selectedItem = index;
              });
            },
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.shopping_cart),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favorite",
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
                backgroundColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
      body: pagesList[selectedItem],
    );
  }
}
