import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: (() {
              //btn logic
            }),
            icon: Icon(Icons.person_2_outlined),
            color: Color.fromARGB(255, 0, 0, 0),
            iconSize: 100,
          ),
          Text(
            'Profile Screen',
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ],
      )),
    );
    ;
  }
}
