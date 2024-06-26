import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/services.dart';

import 'build_elevated_button_widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool status = true;
  int currentIndex = 0;



  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              width: 400,
              color: Colors.purple.shade100,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 10),
                    child: Container(
                      width: 165,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 30, bottom: 12, right: 4),
                              child: Image.asset('assets/images/flipkart.jpg'),
                            ),
                            Text(
                              "FlipKart",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the radius as needed
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 10),
                    child: Container(
                      height: 40,
                      width: 165,
                      child: BuildElevatedButtonWidget(),
                    ),
                  )
                ],
              ),
            ),


               Container(
                  height: 60,
                  width: 400,
                  color: Colors.purple.shade100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 7),
                        child: Container(
                          height: 60,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Brand Mall",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 27,
                                child: FlutterSwitch(
                                  activeColor: Colors.green,
                                  inactiveColor: Colors.grey.shade300,
                                  activeTextColor: Colors.black45,
                                  inactiveTextColor: Colors.black45,

                                  showOnOff: true,
                                  width: 60.0,
                                  height: 30.0,
                                  valueFontSize: 12.0,
                                  toggleSize: 10.0,
                                  value: status,
                                  borderRadius: 30.0,
                                  padding: 8.0,
                                  onToggle: (val) {
                                    setState(() {
                                      status = val;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 260, // Set the desired width
                            height: 40,
                            decoration: BoxDecoration(color: Colors.white),
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                                hintText: "top deal on mobile",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                                prefixIcon: Icon(Icons.search,
                                    color: Colors.grey, size: 25),
                                suffixIcon: Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.mic_none,
                                        color: Colors.grey,
                                        size: 25,
                                      ),
                                      SizedBox(
                                          width:
                                              8.0), // Adjust the spacing between the icons
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        color: Colors.grey,
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),

            CarouselSlider(
              options: CarouselOptions(

                height: 196.0,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll:true ,
                // autoPlayAnimationDuration: Duration(milliseconds: 500),
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: [
                Container(
                  height: 200,
                  width: 377,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.apple,
                                        size: 18,
                                      ),
                                      SizedBox(width: 4.0),
                                      Text(
                                        "iPhone",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "iPhone 14 From ₹51,999 or ₹9,500/m",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "14 Plus From ₹60,999,",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Upgrade To Newer,Better iPhone",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Buy Before Prices Increases",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 150,
                              child: Container(
                                height: 150,
                                width: 80,
                                child: Image(
                                  image: AssetImage("assets/images/iphone2.jpg"),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  width: 50,
                                  child: Image(
                                    image: AssetImage("assets/images/big2.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Container(
                                  height: 10,
                                  width: 60,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "8th-15th OCT",
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                    height: 25,
                                    width: 50,
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/intel.jpg"))),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                height: 25,
                                width: 190,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Container(
                                        height: 20,
                                        width: 40,
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/icici.jpg"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Container(
                                        height: 20,
                                        width: 40,
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/axis.jpg"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Container(
                                        height: 20,
                                        width: 40,
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/kotak.jpg"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 5, top: 3),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "10% instant",
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Discount",
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Text(
                                "Incl.Bank & Extra Exch.Offer",
                                style: TextStyle(
                                    fontSize: 7,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade600),
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 377,
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left:18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.apple,
                                        size: 18,
                                      ),
                                      SizedBox(width: 4.0),
                                      Text(
                                        "iPhone",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "iPhone 14 From ₹51,999 or ₹9,500/m",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "14 Plus From ₹60,999,",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    "Upgrade To Newer,Better iPhone",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Buy Before Prices Increases",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 150,
                              child: Container(
                                height: 150,
                                width: 80,
                                child: Image(
                                  image: AssetImage("assets/images/iphone2.jpg"),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  width: 50,
                                  child: Image(
                                    image: AssetImage("assets/images/big2.jpg"),
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Container(
                                  height: 10,
                                  width: 60,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "8th-15th OCT",
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Container(
                                    height: 25,
                                    width: 50,
                                    child: Image(
                                        image: AssetImage(
                                            "assets/images/intel.jpg"))),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                height: 25,
                                width: 190,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Container(
                                        height: 20,
                                        width: 40,
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/icici.jpg"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Container(
                                        height: 20,
                                        width: 40,
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/axis.jpg"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3),
                                      child: Container(
                                        height: 20,
                                        width: 40,
                                        child: Image(
                                          image: AssetImage(
                                              "assets/images/kotak.jpg"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(left: 5, top: 3),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "10% instant",
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Discount",
                                            style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Text(
                                "Incl.Bank & Extra Exch.Offer",
                                style: TextStyle(
                                    fontSize: 7,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade600),
                              ),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: DotsIndicator(
                          dotsCount: 2,
                position: currentIndex.toDouble(),
                          decorator: DotsDecorator(
                            size: const Size.square(5.0),
                          ),
                        ),
                      ),

            Padding(
              padding: const EdgeInsets.only(
                top: 3,
              ),
              child: Container(
                height: 240,
                width: 400,
                color: Colors.purple.shade100,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 7, top: 6, bottom: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.yellow,
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Colors.blue,
                                  child: Container(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                        image:
                                            AssetImage("assets/images/per.jpg"),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(
                                  "Top offers",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 7, top: 6, bottom: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.yellow,
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Colors.blue,
                                  child: Container(
                                      height: 55,
                                      width: 80,
                                      child: Image(
                                        image:
                                            AssetImage("assets/images/i.jpg"),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(
                                  "Mobiles",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 7, top: 6, bottom: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.yellow,
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Colors.blue,
                                  child: Container(
                                      height: 60,
                                      width: 55,
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/fashion.jpg"),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(
                                  "Fashion",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 7, top: 6, bottom: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.yellow,
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Colors.blue,
                                  child: Container(
                                      height: 60,
                                      width: 55,
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/elect.jpg"),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(
                                  "Electronics",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 7, top: 2, bottom: 7),
                              child: CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.yellow,
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Colors.blue,
                                  child: Container(
                                      height: 60,
                                      width: 55,
                                      child: Image(
                                        image:
                                            AssetImage("assets/images/tv2.jpg"),
                                      )),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text(
                                    "TVs &",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Appliances",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 5, top: 2, bottom: 7),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.yellow,
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Colors.blue,
                                  child: Container(
                                      height: 60,
                                      width: 70,
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/beauty.jpg"),
                                      )),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 7),
                                    child: Text(
                                      "Beauty,Food,",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Text(
                                    "Toys,Sports...,",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 7, top: 7, bottom: 9),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.yellow,
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Colors.blue,
                                  child: Container(
                                      height: 60,
                                      width: 60,
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/home.jpg"),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "Home &",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Text(
                                "Furniture",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 7, top: 7, bottom: 25),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.yellow,
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Colors.blue,
                                  child: Container(
                                      height: 60,
                                      width: 60,
                                      child: Image(
                                        image:
                                            AssetImage("assets/images/gro.jpg"),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "Grocery",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 7, top: 7, bottom: 9),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.yellow,
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Colors.blue,
                                  child: Container(
                                      height: 60,
                                      width: 60,
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/flight.jpg"),
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "Flights &",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Text(
                                "Hotels",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 7, top: 2, bottom: 7),
                              child: CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.yellow,
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Colors.blue,
                                  child: Container(
                                      height: 60,
                                      width: 65,
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/head.jpg"),
                                      )),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text(
                                    "Next-Gen",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Brands",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(3.0),
                    border: Border.all(color: Colors.black),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Colors.orange.shade100, Colors.orange.shade600]
                  ),),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 5, bottom: 2, right: 40),
                          child: Text(
                            "Revoltt FS1 Pro",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5,
                            top: 2,
                          ),
                          child: Text(
                            "1.96\" AMOLED | Calling",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: 70,
                          ),
                          child: Text(
                            "Just ₹1,899",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40),
                      child:
                          Image(image: AssetImage("assets/images/watch2.jpg")),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 40, top: 20),
                          child: Text(
                            "fastrack",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 55,
                            bottom: 10,
                          ),
                          child: Text(
                            "Smart",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 9,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 100.0,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 500),
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 8,
                      ),
                      child: Container(
                        height: 100,
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.purple,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 50,
                                width: 97,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "Hero offer on Flagship",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/sam1.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              "Samsung S21 FE 5G",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white70),
                            ),
                            Text(
                              "From ₹28,499",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.yellow.shade200,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 8,
                      ),
                      child: Container(
                        height: 100,
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.purple,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 50,
                                width: 97,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "Extra upto 6000 Off",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                        height: 35,
                                        width: 50,
                                        child: Image(
                                            image: AssetImage(
                                                "assets/images/lap.jpg")))
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              "Gaming Laptops",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white70),
                            ),
                            Text(
                              "From ₹42,990",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.yellow.shade200,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 7,
                      ),
                      child: Container(
                        height: 100,
                        width: 106,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.purple,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                  height: 60,
                                  width: 97,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 45,
                                        width: 106,
                                        color: Colors.red,
                                        child: const Image(
                                          image: AssetImage(
                                              "assets/images/bed3.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        height: 15,
                                        width: 106,
                                        color: Colors.yellow,
                                        child: Center(
                                            child: Text(
                                          "Live for 1 Hour",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500),
                                        )),
                                      )
                                    ],
                                  )),
                            ),
                            Text(
                              "Double Bedsheets",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white70),
                            ),
                            Text(
                              "Just At ₹190",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.yellow.shade200,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 8,
                      ),
                      child: Container(
                        height: 100,
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.purple,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 50,
                                width: 97,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "Hero offer on Flagship",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      height: 35,
                                      width: 35,
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/sam1.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              "Samsung S21 FE 5G",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white70),
                            ),
                            Text(
                              "From ₹28,499",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.yellow.shade200,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 8,
                      ),
                      child: Container(
                        height: 100,
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.purple,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 50,
                                width: 97,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "Extra upto 6000 Off",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                        height: 35,
                                        width: 50,
                                        child: Image(
                                            image: AssetImage(
                                                "assets/images/lap.jpg")))
                                  ],
                                ),
                              ),
                            ),
                            Text(
                              "Gaming Laptops",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white70),
                            ),
                            Text(
                              "From ₹42,990",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.yellow.shade200,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 6,
                        right: 7,
                      ),
                      child: Container(
                        height: 100,
                        width: 106,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.purple,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                  height: 60,
                                  width: 97,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 45,
                                        width: 106,
                                        color: Colors.red,
                                        child: const Image(
                                          image: AssetImage(
                                              "assets/images/bed3.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        height: 15,
                                        width: 106,
                                        color: Colors.yellow,
                                        child: Center(
                                            child: Text(
                                              "Live for 1 Hour",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500),
                                            )),
                                      )
                                    ],
                                  )),
                            ),
                            Text(
                              "Double Bedsheets",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white70),
                            ),
                            Text(
                              "Just At ₹190",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.yellow.shade200,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: DotsIndicator(
                dotsCount: 2,
                position: currentIndex.toDouble(),
                decorator: DotsDecorator(
                  size: const Size.square(5.0),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 8),
                  child: Container(
                    height: 140,
                    width: 165,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            height: 80,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Container(
                                    height: 20,
                                    width: 150,
                                    color: Colors.yellow,
                                    child: Center(
                                        child: Text(
                                      "Flagship Performance:Best Price",
                                      style: (TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.deepPurple)),
                                    ))),
                                Container(
                                  height: 60,
                                  width: 150,
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Container(
                                            height: 60,
                                            width: 50,
                                            child: Image(
                                              image: AssetImage(
                                                "assets/images/poco.jpg",
                                              ),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      Positioned(
                                        top: 30,
                                        right: 85,
                                        // height:100,
                                        // width: 100,
                                        child: Container(
                                          height: 27,
                                          width: 75,
                                          color: Colors.blue,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 15),
                                                child: Text(
                                                  "Pay Only",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 13,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 28),
                                                child: Text(
                                                  "₹2,750/m",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 10,
                                                      color: Colors.white70),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60, top: 10),
                          child: Text(
                            "POCO X5 Pro 5G",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white70),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 8, top: 5),
                              child: Text(
                                "From ₹16,499",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 5),
                              child: Text(
                                "₹25,999",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only( right: 8),
                  child: Container(
                    height: 140,
                    width: 165,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            height: 80,
                            width: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Container(
                                    height: 20,
                                    width: 150,
                                    color: Colors.yellow,
                                    child: Center(
                                        child: Text(
                                      "Bestselling Curved Display<20k",
                                      style: (TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.deepPurple)),
                                    ))),
                                Container(
                                  height: 60,
                                  width: 160,
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Container(
                                            height: 60,
                                            width: 50,
                                            child: const Image(
                                              image: AssetImage(
                                                "assets/images/realme.jpg",
                                              ),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      Positioned(
                                        top: 30,
                                        right: 85,
                                        // height:100,
                                        // width: 100,
                                        child: Container(
                                          height: 27,
                                          width: 75,
                                          color: Colors.blue,
                                          child: const Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 15),
                                                child: Text(
                                                  "Pay Only",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 13,
                                                      color: Colors.white),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    right: 28),
                                                child: Text(
                                                  "₹6,667/m",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 10,
                                                      color: Colors.white70),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60, top: 10),
                          child: Text(
                            "realme 11 Pro 5G",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white70),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 8, top: 5),
                              child: Text(
                                "From ₹19,999",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 5),
                              child: Text(
                                "₹25,999",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Suggested for You",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, ),
                      child: Container(
                        height: 170,
                        width: 107,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black26, width: 1)),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 85,
                              color: Colors.grey.shade400,
                              child: Image(
                                image: AssetImage("assets/images/p1.jpg"),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Kulfi Casual Re...",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 4),
                                  child: Text(
                                    "₹999",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey),
                                  ),
                                ),
                                Text(
                                  "₹299",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Big Saving Deal",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, ),
                      child: Container(
                        height: 170,
                        width: 107,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black26, width: 1)),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 85,
                              color: Colors.grey.shade400,
                              child: Image(
                                image: AssetImage("assets/images/p2.jpg"),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "FabRange Casu...",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 4),
                                  child: Text(
                                    "₹999",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey),
                                  ),
                                ),
                                Text(
                                  "₹281",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Big Saving Deal",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, ),
                      child: Container(
                        height: 170,
                        width: 107,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black26, width: 1)),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 85,
                              color: Colors.grey.shade400,
                              child: Image(
                                image: AssetImage("assets/images/p3.jpg"),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "veshh Casual Bi ",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 4),
                                  child: Text(
                                    "₹999",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey),
                                  ),
                                ),
                                Text(
                                  "₹297",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Free Delivery",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, ),
                      child: Container(
                        height: 170,
                        width: 107,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black26, width: 1)),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 85,
                              color: Colors.grey.shade400,
                              child: Image(
                                image: AssetImage("assets/images/p4.jpg"),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Gladly Casual...",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 4),
                                  child: Text(
                                    "₹999",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey),
                                  ),
                                ),
                                Text(
                                  "₹208",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text(
                              "Big Saving Deal",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, ),
                      child: Container(
                        height: 170,
                        width: 107,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black26, width: 1)),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 85,
                              color: Colors.grey.shade400,
                              child: Image(
                                image: AssetImage("assets/images/p5.jpg"),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Kulfi Casual Re...",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 4),
                                  child: Text(
                                    "₹999",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey),
                                  ),
                                ),
                                Text(
                                  "₹262",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Lowest price in...",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, ),
                      child: Container(
                        height: 170,
                        width: 107,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black26, width: 1)),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 85,
                              color: Colors.grey.shade400,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Image(
                                      image: AssetImage("assets/images/p6.jpg"),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    child: Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Text(
                                              "4.1",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 10,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "SLENOR Casual..",
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, right: 4),
                                  child: Text(
                                    "₹2,499",
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey),
                                  ),
                                ),
                                Text(
                                  "₹478",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Big Saving Deal",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Recently Viewed Stores",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 8),
                    child: Container(
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(color: Colors.black26, width: 1)),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            child: Image(
                              image: AssetImage("assets/images/shoe.jpg"),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Men's Casual",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade600),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Shoes",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade600),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(color: Colors.black26, width: 1)),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            child: Image(
                              image: AssetImage("assets/images/shoe2.jpg"),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Men's Sports",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade600),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Shoes",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade600),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(color: Colors.black26, width: 1)),
                      child: Container(
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black26, width: 1)),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              child: Image(
                                image: AssetImage("assets/images/cable.jpg"),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Mobile Cables",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(color: Colors.black26, width: 1)),
                      child: Container(
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black26, width: 1)),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              child: Image(
                                image: AssetImage("assets/images/mouse.jpg"),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Mouse",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 10, right: 4),
                  child: Container(
                    height: 180,
                    width: 165,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(color: Colors.black26, width: 1)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                            height: 120,
                            width: 155,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.pink.shade100,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 20,
                                  width: 155,
                                  color: Colors.yellow,
                                  child: Center(
                                    child: Text("1 Hour Only",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.deepPurple)),
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 110,
                                  child: Image(
                                    image:
                                        AssetImage("assets/images/shoes.png"),
                                  ),
                                )
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right: 70, top: 3),
                          child: Text(
                            "HRX & Campus",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 35, top: 3),
                          child: Text(
                            "Men's Shoes,Sneakers...",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 90, top: 3),
                          child: Text(
                            "Under ₹699",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    top: 10,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 180,
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black26, width: 1)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Container(
                                height: 120,
                                width: 155,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.pink.shade100,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 120,
                                      width: 110,
                                      child: Image(
                                        image:
                                            AssetImage("assets/images/tv1.jpg"),
                                      ),
                                    )
                                  ],
                                )),
                            Padding(
                              padding: const EdgeInsets.only(right: 50, top: 3),
                              child: Text(
                                "Top Selling Smart Tvs",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10, top: 3),
                              child: Text(
                                "Mi,Thomson,FFALCON & more",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 89, top: 3),
                              child: Text(
                                "From ₹6,749",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 86,
                        bottom: 57,
                        child: Container(
                          height: 30,
                          width: 84,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "From ₹1,669/m",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Text(
                                  "No Cost EMI",
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 9),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 35,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Sponsored",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 170,
                            width: 320,
                            child: Image(
                              image: AssetImage(
                                "assets/images/col.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 320,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Colors.grey.shade300, Colors.blue.shade100]
                              ),
                            ),

                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Just ₹999",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 220),
                                  child: Icon(Icons.keyboard_arrow_right_outlined,color: Colors.black38,),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 320,
                    child: Image(
                      image: AssetImage(
                        "assets/images/close.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
