import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Card(
          child: Column(
            children: [
              TextFormField(),
              TextFormField(),
              TextButton(
                child: Text('Login'),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
