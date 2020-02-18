import 'package:flutter/material.dart';
import 'package:flutter_hello_world/animal.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(new MaterialApp(
      home:
          new Scaffold(appBar: new AppBar(title: myAppBar()), body: MyBody())));
}

class myAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new AppBar(title: new Text('Flutter.su'));
  }
}




class MyBody extends StatelessWidget {
//  void funck() {
//
//    newClass.someMeth();
//





  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        children: <Widget>[
          new Text('Hello World!'),
          new FlatButton(
            onPressed: () {
              /* const url = 'https://flutter.su';
              launch(url); *
              FirstClass firstClass = FirstClass('Dada');
              firstClass.hey();
            },
            child: new Text('open Site'),
            color: Colors.red,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}

class FirstClass extends JustFor with Mix {
  List<Animal> list = new List<Animal>();

  Function testing = test;
  String name;

  FirstClass(this.name) : super(name);

  void method() {
    print(name);
    list.add(new Animal(32));
    list.add(new Animal(1212));
    test(list);
  }
}

void test(List<Animal> list) {
  for (Animal ani in list) {
    print(ani.toInt());
  }
}

mixin Mix {
  String name;

  void hello() {
    print('Hello $name!!!');
  }
}

class JustFor {
  String name;

  JustFor(this.name);

  void hey() {
    print('Hello ${name.toString()}!!!');
  }
}
