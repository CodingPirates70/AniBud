import 'package:anibud_ui/donation/upi.dart';
import 'package:flutter/material.dart';
//import 'package:upi/upi.dart';

class DonationAmount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DonationAmountState();
  }
}

var amount = 0.0;
var count50 = 0;
var count100 = 0;
var count150 = 0;
var count200 = 0;
var count500 = 0;
var count1000 = 0;

class _DonationAmountState extends State<DonationAmount> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text('Donation'),
        ),
        body: Column(children: [
          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: h / 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Select Amount',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton(
                      onPressed: () {
                        amount = 50;
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(w / 3, w / 8),
                        backgroundColor: Colors.blue, // Text color
                        elevation: 4, // Elevation value
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(18), // Button border radius
                        ),
                      ),
                      child: Text('50rs'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton(
                      onPressed: () {
                        amount = 100;
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(w / 3, w / 8),
                        backgroundColor: Colors.blue, // Text color
                        elevation: 4, // Elevation value
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(18), // Button border radius
                        ),
                      ),
                      child: Text('100rs'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton(
                      onPressed: () {
                        amount = 150;
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(w / 3, w / 8),
                        backgroundColor: Colors.blue, // Text color
                        elevation: 4, // Elevation value
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(18), // Button border radius
                        ),
                      ),
                      child: Text('150rs'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(w / 3, w / 8),
                        backgroundColor: Colors.blue, // Text color
                        elevation: 4, // Elevation value
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(18), // Button border radius
                        ),
                      ),
                      child: Text('200rs'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton(
                      onPressed: () {
                        amount = 500;
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(w / 3, w / 8),
                        backgroundColor: Colors.blue, // Text color
                        elevation: 4, // Elevation value
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(18), // Button border radius
                        ),
                      ),
                      child: Text('500rs'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: ElevatedButton(
                      onPressed: () {
                        amount = 1000;
                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(w / 3, w / 8),
                        backgroundColor: Colors.blue, // Text color
                        elevation: 4, // Elevation value
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(18), // Button border radius
                        ),
                      ),
                      child: Text('1000rs'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: w / 5,
              ),
            ],
          ),
          SizedBox(
            height: h / 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UPIScreen(
                          amount: amount,
                        )),
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(w / 1.1, w / 5),
              backgroundColor: Colors.blue, // Text color
              elevation: 4, // Elevation value
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18), // Button border radius
              ),
            ),
            child: Text('Pay Rs $amount'),
          )
        ]));
  }
}

class $count50 {}
