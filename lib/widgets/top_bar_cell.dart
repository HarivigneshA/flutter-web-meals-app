import 'package:flutter/material.dart';
import 'package:meals_app/constants.dart';

class TopBarCell extends StatelessWidget {
  final String text,route;
  final Color textColor, paddingColor;

  const TopBarCell({
    required this.text,
    required this.textColor,
    required this.paddingColor,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              color: paddingColor,
              borderRadius: new BorderRadius.all(const Radius.circular(7)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
