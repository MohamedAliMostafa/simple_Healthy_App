import 'package:flutter/material.dart';
import 'package:healthy/StateMangement/Provider.dart';
import 'package:healthy/Tabs/Bmi.dart';
import 'package:healthy/Tabs/Home.dart';
import 'package:healthy/Tabs/Profile.dart';
import 'package:provider/provider.dart';


class Home extends StatefulWidget {
  static const String RouteName = "home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index=0;
  @override
  Widget build(BuildContext context) {

    List<Widget>tabs=[HomeTab(),BMI(),Profile()];
    List<String>Apptitle=["Home","BMI","Profile"];
    var p= Provider.of<Myprovidr>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(Apptitle[index]),centerTitle: true,backgroundColor: Colors.blueGrey,),
     bottomNavigationBar: Container(
       margin: EdgeInsets.all(20),
       clipBehavior: Clip.antiAlias,
       decoration: BoxDecoration(
           color: Colors.green,
           borderRadius: BorderRadius.circular(30)
       ),
       child: BottomNavigationBar(
         selectedItemColor: Colors.red,
         unselectedItemColor: Colors.amber,
         backgroundColor: Colors.blueGrey,
           elevation: 30,
           currentIndex:index,
           onTap: (value) {
             setState(() {
               index=value;

             });

           },
             items: [
           BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
           BottomNavigationBarItem(icon: Icon(Icons.calculate_rounded),label: "Calculate"),
           BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
         ]),
     ),

      body: tabs[index],
    );
  }
}
