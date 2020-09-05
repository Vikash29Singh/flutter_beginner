import 'package:flutter/material.dart';
import 'package:testing_app/main.dart';
class SecondScreen extends StatefulWidget {
  @override
  _SecondScreen createState() => new _SecondScreen();
}

class _SecondScreen extends State<SecondScreen> {

  String _text = '';

  void buttonMethod(value) {
    setState(() {
      _text = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),

      body: Center (
        child: new Column(
            children: <Widget>[
              new RaisedButton(
                  child: Text('Go back to Home Screen'),
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: (){
                    Navigator.pop(context);
                  }),
              new FlatButton(
                  child: new Text('Flat Button'),
                  onPressed: () {
                    buttonMethod('Flat Button was Pressed');
                  }),
              new IconButton(icon: new Icon(Icons.add_shopping_cart) , onPressed: (){
                buttonMethod('Icon Button was Pressed');
              }),

                new Text(_text),
            ],

          )),


      /*  floatingActionButton: FloatingActionButton(
          onPressed: () {
            buttonMethod("FloatingActionButton was Pressed");
          },
          child: Icon(Icons.add_comment),
          backgroundColor: Colors.deepPurple),*/

      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            buttonMethod("Extended FloatingActionButton was Pressed");
          },
          label: new Text("Approve"),
          icon: Icon(Icons.thumb_up),
          backgroundColor: Colors.deepOrange),
    );
  }
}


/* body: Center(
        child: RaisedButton(
          child: Text('Go back to Home Screen'),
          color: Colors.green,
          textColor: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      
 */