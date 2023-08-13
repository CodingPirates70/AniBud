// ignore: file_names
import 'package:anibud_ui/Vet_Hospitals/MapScreen.dart';
import 'package:flutter/material.dart';
//import 'package:anibud_ui/MapScreen.dart'

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FirstScreenState();
  }
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(children: [
        Stack(
          children: [
            Container(
              width: w,
              height: h / 3,
              color: const Color(0xFFB4D5DC),
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
            ),
            Positioned(
              top: w / 10,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.7),
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 50,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              width: w - 50,
              height: h / 8 + 10,
              decoration: BoxDecoration(
                color: const Color(0xFF4DD01F),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MapScreen(
                                      title: 'gee',
                                    )));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF32BB53),
                      ),
                      child: const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 28.0),
                            child: Column(
                              children: [
                                Text(
                                  'PERSONAL PETS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'For your personal pets',
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
                            borderRadius: BorderRadius.circular((w - 50) / 2),
                          ),
                          child: const Image(
                            image: AssetImage(
                              'assets/images/pet.png',
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
        const SizedBox(
          height: 50,
        ),
        Stack(
          children: [
            Container(
              width: w - 50,
              height: h / 8 + 10,
              decoration: BoxDecoration(
                color: const Color(0xFFDECB24),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MapScreen(
                                      title: 'gee',
                                    )));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEDBC3F),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: w / 3.3,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 25.0),
                            child: Column(
                              children: [
                                Text(
                                  'INJURED ANIMAL',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  'For any animal in\n locality',
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
                      left: w / 50,
                      top: 5,
                      child: Container(
                          width: (w - 63) / 2.8,
                          height: h / 9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular((w - 50) / 2),
                          ),
                          child: const Image(
                            image: AssetImage(
                              'assets/images/injured.png',
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
    );
  }
}
