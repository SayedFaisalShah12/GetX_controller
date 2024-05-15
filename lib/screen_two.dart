import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
        centerTitle: true,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(''
                  'In This Section we talk about the responsiveness of screen using media query. '
                  'how can an app be responsive with respect to platform.'),
            ),
          ),
          Container(
            child: Center(child: Text('Container')),
            height: height * 0.2,
            width: width * 0.4,
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          SizedBox(height: 0.5,),
          Container(
            child: Center(child: Text('Container')),
            height: height * 0.3,
            width: width * 0.3,
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
          ),
          SizedBox(height: 0.5,),
          Container(
            child: Center(child: Text('Container')),
            height: height * 0.2,
            width: width * 0.2,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
