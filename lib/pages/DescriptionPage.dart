import 'package:carseller/pages/ChatPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  bool conatinerOpen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite,
              size: 15,
            ),
          )
        ],
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_outlined, size: 15),
        ),
        title: const Center(
            child: Text(
          "Detail",
          style: TextStyle(
            fontSize: 15,
          ),
        )),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: ElevatedButton(
              style: const ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size.fromWidth(170)),
                backgroundColor: MaterialStatePropertyAll(Colors.black87),
              ),
              onPressed: () async {
                String phoneNumber = 'tel:+918291660633';
                if (await canLaunchUrl(Uri.parse(phoneNumber))) {
                  await launchUrl(Uri.parse(phoneNumber));
                } else {
                  throw 'could not place call';
                }
              },
              child: const Text(
                "Make Call",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: ElevatedButton(
              style: const ButtonStyle(
                fixedSize: MaterialStatePropertyAll(Size.fromWidth(170)),
                backgroundColor: MaterialStatePropertyAll(Colors.green),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatPage()));
              },
              child: const Text(
                "Chat Now",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/bmw.png",
                  height: MediaQuery.of(context).size.height * .30,
                  width: MediaQuery.of(context).size.width,
                ),
                Image.asset(
                  "assets/images/bmw.png",
                  height: MediaQuery.of(context).size.height * .30,
                  width: MediaQuery.of(context).size.width,
                ),
                Image.asset(
                  "assets/images/bmw.png",
                  height: MediaQuery.of(context).size.height * .30,
                  width: MediaQuery.of(context).size.width,
                ),
                Image.asset(
                  "assets/images/bmw.png",
                  height: MediaQuery.of(context).size.height * .30,
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "BMW X1",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "\$12000",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  if (conatinerOpen == false) {
                    setState(() {
                      conatinerOpen = true;
                    });
                  }
                },
                child: conatinerOpen
                    ? Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0.7, 0.7),
                                blurRadius: BorderSide.strokeAlignOutside,
                                blurStyle: BlurStyle.outer,
                                spreadRadius: BorderSide.strokeAlignOutside,
                              ),
                            ]),
                        child: Center(
                            child: Text(
                          "Specification",
                          style: TextStyle(color: Colors.black),
                        )))
                    : Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0.7, 0.7),
                                blurRadius: BorderSide.strokeAlignOutside,
                                blurStyle: BlurStyle.inner,
                                spreadRadius: BorderSide.strokeAlignOutside,
                              ),
                            ]),
                        child: Center(
                            child: Text(
                          "Specification",
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
              GestureDetector(
                onTap: () {
                  if (conatinerOpen == true) {
                    setState(() {
                      conatinerOpen = false;
                    });
                  }
                },
                child: conatinerOpen == false
                    ? Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0.7, 0.7),
                                blurRadius: BorderSide.strokeAlignOutside,
                                blurStyle: BlurStyle.outer,
                                spreadRadius: BorderSide.strokeAlignOutside,
                              ),
                            ]),
                        child: Center(child: Text("Seller Information")))
                    : Container(
                        width: 150,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0.7, 0.7),
                                blurRadius: BorderSide.strokeAlignOutside,
                                blurStyle: BlurStyle.inner,
                                spreadRadius: BorderSide.strokeAlignOutside,
                              ),
                            ]),
                        child: Center(
                            child: Text(
                          "Seller Information",
                          style: TextStyle(color: Colors.white),
                        ))),
              ),
            ],
          ),
          CustomPaint(
            size: Size(323, 20),
            painter: GradientLinePainter(),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: conatinerOpen == true
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Make",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              Text(
                                "BMW",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Model",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Text(
                                "x1",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Make",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              Text(
                                "BMW",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Model",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              Text(
                                "x1",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Make",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Text(
                                "BMW",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Model",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              Text(
                                "x1",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Make",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              Text(
                                "BMW",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Model",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              Text(
                                "x1",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Make",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              Text(
                                "BMW",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Model",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              Text(
                                "x1",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Text(
                                "sandeep",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "City",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              Text(
                                "Thane",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "owned",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Text(
                                "BMW",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Model",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              Text(
                                "x1",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Make",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Text(
                                "BMW",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Model",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              Text(
                                "x1",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Make",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Text(
                                "BMW",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Model",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              Text(
                                "x1",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Make",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              Text(
                                "BMW",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Model",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 12),
                              ),
                              Text(
                                "x1",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
          )
        ],
      ),
    );
  }
}

class GradientLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    final startPoint = Offset(0, size.height / 2);
    final endPoint = Offset(size.width, size.height / 2);
    final colors = [
      Colors.green,
      Colors.black87,
    ]; // Gradient colors

    final gradient = LinearGradient(
      colors: colors,
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    );

    paint.shader = gradient.createShader(Rect.fromPoints(startPoint, endPoint));

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
