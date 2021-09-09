import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/constants.dart';
import 'package:meals_app/provider/device_details.dart';
import 'package:meals_app/widgets/top_bar_cell.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    MyDevice _myDevice = MyDevice();
    _myDevice.setDeviceDetails(size.height, size.width);

    return Scaffold(
      body: Container(
          height: _myDevice.getHeight(),
          width: _myDevice.getWidth(),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.all(const Radius.circular(46)),
                ),
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: new BorderRadius.all(
                                    const Radius.circular(7)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(7.0),
                                child: Text(
                                  'MEALS APP',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TopBarCell(
                          text: 'HOME',
                          textColor: Colors.black,
                          paddingColor: primaryColor,
                        ),
                        TopBarCell(
                          text: 'PRICING',
                          textColor: Colors.grey,
                          paddingColor: Colors.white,
                        ),
                        TopBarCell(
                          text: 'CONTACT',
                          textColor: Colors.grey,
                          paddingColor: Colors.white,
                        ),
                        TopBarCell(
                          text: 'LOGIN',
                          textColor: Colors.grey,
                          paddingColor: Colors.white,
                        ),
                        TopBarCell(
                          text: 'ABOUT US',
                          textColor: Colors.grey,
                          paddingColor: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

