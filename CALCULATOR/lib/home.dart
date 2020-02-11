import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var  num1,num2,s;

  final TextEditingController a1 = new TextEditingController(text: "0");
  final TextEditingController a2 = new TextEditingController(text: "0");

  void doAdd(){
    setState(() {
      num1 = int.parse(a1.text);
      num2 = int.parse(a2.text);
      s = num1 + num2;
    });
  }

  void doSub(){
    setState(() {
      num1 = int.parse(a1.text);
      num2 = int.parse(a2.text);
      s = num1 - num2;
    });
  }

  void doMul(){
    setState(() {
      num1 = int.parse(a1.text);
      num2 = int.parse(a2.text);
      s = num1 * num2;
    });
  }

  void doDiv(){
    setState(() {
      num1 = int.parse(a1.text);
      num2 = int.parse(a2.text);
      s = num1 ~/ num2;
    });
  }

  void doClear(){
    setState(() {
      a1.text = "0";
      a2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Result : $s ",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold, color: Colors.blue
                ),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter Number 1"
                ),
                controller: a1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    hintText: "Enter Number 2"
                ),
                controller: a2,
              ),
              new Padding(
                  padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("+"),
                    color: Colors.redAccent,
                    onPressed: doAdd,
                  ),
                  new MaterialButton(
                    child: new Text("-"),
                    color: Colors.redAccent,
                    onPressed: doSub,
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("*"),
                    color: Colors.redAccent,
                    onPressed: doMul,
                  ),
                  new MaterialButton(
                    child: new Text("/"),
                    color: Colors.redAccent,
                    onPressed: doDiv,
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("Clear"),
                    color: Colors.red,
                    onPressed: doClear,
                  )
                ],
              )
            ],
          ),
        ),
    );
  }
}
