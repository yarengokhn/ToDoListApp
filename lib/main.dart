import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      home: Iskele(),
    );
  }
}
class Iskele extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title:Text("ToDo List App"),
     ),
     body:HomeScreen(),
   );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController tec=TextEditingController();
  List myList=[];

  addelement(){
    setState((){
      myList.add(tec.text);
      tec.clear();
    });
  }

  removeelement(){
    setState((){
      myList.remove(tec.text);
      tec.clear();
    });
  }







  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: <Widget>[
          Flexible(child: ListView.builder(
          itemBuilder: (context,indexno) => ListTile(
      title: Text(myList[indexno])) ,
    ),
          ),
          TextField(
            controller: tec,
          ),
          RaisedButton(onPressed:addelement(),child:Text("Add"),),
          RaisedButton(onPressed:removeelement(),child:Text("Remove")),
        ],
      ),
    );
  }
}
