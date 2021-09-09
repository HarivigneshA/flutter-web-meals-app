import 'package:flutter/material.dart';

class TopBarCell extends StatelessWidget {
  final String text;
  final Color textColor, paddingColor;

  const TopBarCell({
    required this.text,
    required this.textColor,
    required this.paddingColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('clicked !');
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
