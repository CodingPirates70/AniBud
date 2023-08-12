import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(children: [
              Stack(
                children: [
                  Container(
                    width: w,
                    height: h / 3,
                    color: Color(0xFFB4D5DC),
                  ),
                  Positioned(
                    top: h / 3.5,
                    child: Container(
                      width: w,
                      height: h / 15,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                  )
                ],
              ),
              //button 1
              Stack(
                children: [
                  Container(
                    width: w - 50,
                    height: h / 8 + 10,
                    decoration: BoxDecoration(
                      color: Color(0xFF4DD01F),
                      borderRadius: BorderRadius.circular((w - 50) / 2),
                    ),
                  ),
                  Positioned(
                    left: 6,
                    top: 4,
                    child: SizedBox(
                      width: w - 63,
                      height: h / 8,
                      child: Stack(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF32BB53),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 28.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'VET HOSPITALS',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        'Vet hospitals near you',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: w / 1.9,
                            top: 5,
                            child: Container(
                                width: (w - 63) / 2.8,
                                height: h / 9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.circular((w - 50) / 2),
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/VethHospital.png',
                                  ),
                                  fit: BoxFit.scaleDown,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Stack(
                children: [
                  Container(
                    width: w - 50,
                    height: h / 8 + 10,
                    decoration: BoxDecoration(
                      color: Color(0xFF4DD01F),
                      borderRadius: BorderRadius.circular((w - 50) / 2),
                    ),
                  ),
                  Positioned(
                    left: 6,
                    top: 4,
                    child: SizedBox(
                      width: w - 63,
                      height: h / 8,
                      child: Stack(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF32BB53),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 28.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'VET HOSPITALS',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        'Vet hospitals near you',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: w / 1.9,
                            top: 5,
                            child: Container(
                                width: (w - 63) / 2.8,
                                height: h / 9,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.circular((w - 50) / 2),
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/VethHospital.png',
                                  ),
                                  fit: BoxFit.scaleDown,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
