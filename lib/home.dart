import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  void increment(){
    setState(() {
      counter++;
    });
  }

  void decrement(){
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Rachit App Bar"),
      ),
      drawer: Container(
        height: 500,
        width: 200,
        color: Colors.white,
        child:Column(
          children: [
            Text("Navigation 1"),
            Divider(thickness: 0,),
            Text("Navigation 2"),
            Text("Navigation 3")
          ],
        )
      ),
      body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
              'Current Value:',
                style: TextStyle(color:Colors.black, fontSize:  30)
            ),
            Text(
              '$counter',
              style: TextStyle(color:Colors.black, fontSize:  100)
            )
          ],)
      ),
      floatingActionButton:Align(
        alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children:[
            FloatingActionButton(
                onPressed: increment ,
                tooltip: 'Increment in Value',
                child: Icon(Icons.add)
            ),
          FloatingActionButton(
              onPressed: decrement ,
              tooltip: 'Decrement in Value',
              child: Icon(Icons.remove)),
            ]
            )
          )

      );

    return Container(
      height: 20,
      width: 20,
      color:Colors.white
    );
  }
}
