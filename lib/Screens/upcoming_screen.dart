import 'package:flutter/material.dart';
class UpComingScreen extends StatefulWidget {
  const UpComingScreen({Key? key}) : super(key: key);

  @override
  State<UpComingScreen> createState() => _UpComingScreenState();
}

class _UpComingScreenState extends State<UpComingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('upcomming')),
    );
  }
}
