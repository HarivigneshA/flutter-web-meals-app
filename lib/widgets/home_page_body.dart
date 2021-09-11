import 'package:flutter/material.dart';
import 'package:meals_app/constants.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Container(
          width: constraints.maxWidth * 0.80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Burger".toUpperCase(),
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labor",
                style: TextStyle(
                  fontSize: 21,
                  color: textColor.withOpacity(0.34),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
