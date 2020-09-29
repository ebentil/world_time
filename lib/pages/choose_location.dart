import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //simulate a network request for username
    // await Future.delayed(Duration(seconds: 3), () {
    //   print('eden');
    // });

    //same as above, we are just assigning the value to the name variable
    String name = await Future.delayed(Duration(seconds: 3), () {
      return 'eden';
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'not your averge baby boy';
    });

    print('$name - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('hey there');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
