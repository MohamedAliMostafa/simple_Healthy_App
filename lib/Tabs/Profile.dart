import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../StateMangement/Provider.dart';

class Profile extends StatelessWidget {
  TextStyle style = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  TextStyle style2 =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);
  dynamic dv = const Divider(
    color: Colors.amber,
    thickness: 1,
  );

  @override
  Widget build(BuildContext context) {
    var p = Provider.of<Myprovidr>(context);
    return Scaffold(
      body: Card(
        color: Colors.green,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.amber),
            borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    dv,
                    Text(
                      "Name :",
                      style: style,
                    ),
                    dv,
                    Text(
                      "age :",
                      style: style,
                    ),
                    dv,
                    Text(
                      "Gender :",
                      style: style,
                    ),
                    dv,
                    Text(
                      "Weight",
                      style: style,
                    ),
                    dv,
                    Text("Height : ", style: style),
                    dv,
                    Text(
                      "Status : ",
                      style: style,
                    ),
                    dv,
                    Text("BMI :", style: style),
                    dv,
                  ],
                ),
              ),
              VerticalDivider(
                width: 3,
                thickness: 2,
                color: Colors.amber,
                endIndent: MediaQuery.of(context).size.height*0.14,
                indent: MediaQuery.of(context).size.height*0.14,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    dv,
                    Text(
                      p.Name,
                      style: style2,
                    ),
                    dv,
                    Text(
                      p.age,
                      style: style2,
                    ),
                    dv,
                    Text(
                      p.gender,
                      style: style2,
                    ),
                    dv,
                    Text(
                      p.weight,
                      style: style2,
                    ),
                    dv,
                    Text(
                      p.height,
                      style: style2,
                    ),
                    dv,
                    Text(
                      p.status,
                      style: style2,
                    ),
                    dv,
                    Text(
                      p.bmi,
                      style: style2,
                    ),
                    dv,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
