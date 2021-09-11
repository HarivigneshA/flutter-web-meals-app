
import 'package:flutter/material.dart';
import 'package:meals_app/constants.dart';
import 'package:meals_app/widgets/top_bar_cell.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                new BorderRadius.all(const Radius.circular(46)),
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
                    route: homePageRoute,
                  ),
                  TopBarCell(
                    text: 'PRICING',
                    textColor: Colors.grey,
                    paddingColor: Colors.white,
                    route: homePageRoute,
                  ),
                  TopBarCell(
                    text: 'CONTACT',
                    textColor: Colors.grey,
                    paddingColor: Colors.white,
                    route: homePageRoute,
                  ),
                  TopBarCell(
                    text: 'LOGIN',
                    textColor: Colors.grey,
                    paddingColor: Colors.white,
                    route: loginPageRoute,
                  ),
                  TopBarCell(
                    text: 'ABOUT US',
                    textColor: Colors.grey,
                    paddingColor: Colors.white,
                    route: aboutUsPageRoute,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
