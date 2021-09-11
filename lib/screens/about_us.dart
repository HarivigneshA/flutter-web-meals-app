import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: ContactUs(
            cardColor: Colors.white,
            textColor: Colors.teal.shade900,
            logo: AssetImage('images/splash.png'),
            email: 'adoshi26.ad@gmail.com',
            companyName: ' Adoshi ',
            companyColor: Colors.teal.shade100,
            dividerThickness: 2,
            phoneNumber: '+917818044311',
            website: 'https://abhishekdoshi.godaddysites.com',
            githubUserName: 'AbhishekDoshi26',
            linkedinURL:
                'https://www.linkedin.com/in/abhishek-doshi-520983199/',
            tagLine: 'Flutter Developer',
            taglineColor: Colors.teal.shade100,
            twitterHandle: 'AbhishekDoshi26',
            instagram: '_abhishek_doshi',
            facebookHandle: '_abhishek_doshi'),
      ),
    );
  }
}