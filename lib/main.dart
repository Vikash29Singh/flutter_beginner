import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Navigate to Another Activity Screen',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {

  gotoSecondActivity(BuildContext context){

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondScreen()),
    );//route to next screen

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Activity Screen'),
      ),
      body: Center(

        child: RaisedButton(
            child: Text('Navigate To Second Screen'),
            color: Colors.green,
            textColor: Colors.white,
            onPressed: () {
              gotoSecondActivity(context);
            }),

      ),
    );
  }
}

class SecondScreen extends StatelessWidget {

  goBackToPreviousScreen(BuildContext context){

    Navigator.pop(context);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Activity Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {goBackToPreviousScreen(context);},
          color: Colors.lightBlue,
          textColor: Colors.white,
          child: Text('Go Back To Previous Screen'),
        ),
      ),
    );
  }
}

/*
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
*/