import 'package:flutter/material.dart';
import 'main2.dart';
void main() {
  runApp(MaterialApp(
    title: 'Flutter Navigate to Another Activity Screen',
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => new _HomeScreen();
}



  class _HomeScreen extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Activity'),
      ),
      body: Center(

        child: RaisedButton(
            child: Text('Navigate To Second Screen Please'),
            color: Colors.green,
            textColor: Colors.white,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => SecondScreen()));
            }),

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