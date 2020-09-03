import 'package:flutter/material.dart';

void main()
{
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My sample App",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "Sample App"),
        ),
        body: Center(
          child: Text(
            "Hi Vikash"
          ),
        ),
      ),
    );
  }
}
