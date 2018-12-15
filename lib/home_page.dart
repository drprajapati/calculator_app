import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var sum, num1, num2;
  final TextEditingController textEditingController =
      new TextEditingController();
  final TextEditingController textEditingControllerOne =
      new TextEditingController();

  void doAddition() {
    setState(() {});
    num1 = int.parse(textEditingController.text);
    num2 = int.parse(textEditingControllerOne.text);
    sum = num1 + num2;
  }

  void doSubtraction() {
    setState(() {});
    sum = num1 - num2;
  }

  void doDivision() {
    setState(() {});
    sum = num1 ~/ num2;
  }

  void doMultiplication() {
    setState(() {});
    sum = num1 * num2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator", style: TextStyle(color: Colors.purple)),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: new Container(
        color: Colors.white,
        child: new Padding(
          padding: EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.all(30.0),
                child: new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    labelText: "Enter the number",
                    labelStyle:
                        new TextStyle(color: Colors.purple, fontSize: 20.0),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                  controller: textEditingController,
                ),
              ),
              new Padding(
                padding: EdgeInsets.all(30.0),
                child: new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    labelText: "Enter the number",
                    labelStyle:
                        new TextStyle(color: Colors.purple, fontSize: 20.0),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                  controller: textEditingControllerOne,
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new OutlineButton(
                    child: new Text("+"),
                    borderSide: new BorderSide(color: Colors.purple),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    textColor: Colors.purple,
                    padding: EdgeInsets.all(10),
                    onPressed: doAddition,
                  ),
                  new OutlineButton(
                    child: new Text("-"),
                    borderSide: new BorderSide(color: Colors.purple),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    textColor: Colors.purple,
                    padding: EdgeInsets.all(10),
                    onPressed: doSubtraction,
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new OutlineButton(
                    child: new Text("*"),
                    borderSide: new BorderSide(color: Colors.purple),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    textColor: Colors.purple,
                    padding: EdgeInsets.all(10),
                    onPressed: doMultiplication,
                  ),
                  new OutlineButton(
                    child: new Text("/"),
                    onPressed: doDivision,
                    borderSide: new BorderSide(color: Colors.purple),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    textColor: Colors.purple,
                    padding: EdgeInsets.all(10),
                  ),
                ],
              ),
              new Padding(
                padding: EdgeInsets.all(30.0),
                child: Text("Output: $sum",
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.purple,
                        fontFamily: 'RobotMono',
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
