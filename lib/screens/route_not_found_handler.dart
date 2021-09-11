import 'package:flutter/material.dart';
import 'package:meals_app/constants.dart';

class RouteNotFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Route not found :(",style: TextStyle(fontSize: 20),),
            SizedBox(width:10),
            TextButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, homePageRoute),
              child: const Text("Go Home",style: TextStyle(fontSize: 25),),
            )
          ],
        ),
      ),
    );
  }
}
