import 'package:flutter/material.dart';
import 'package:healthy/StateMangement/Provider.dart';
import 'package:provider/provider.dart';

import '../Widget/TextStyle.dart';
class HomeTab extends StatefulWidget {
  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
   var TextName = TextEditingController();
  var TextAge = TextEditingController();
   String gender="";
   var ke =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var p=Provider.of<Myprovidr>(context);
    return  Form(
        key: ke,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Welcome to Healthy App, Please Enter These details",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.grey),
            ),
            const SizedBox(height: 50,),
            Card(
                color: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: Colors.black)
                ),
                elevation: 6,
                shadowColor: Colors.white12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      StyleText(
                        controller: TextName,
                        errorMsg: "please enter Name",
                        ltext: "Name",
                        type: TextInputType.name,
                      ),
                      const SizedBox(height: 15,),
                      StyleText(
                          controller: TextAge,
                          errorMsg: "please enter Age",
                          ltext: "Age",
                          type: TextInputType.number),
                      RadioListTile(
                        title: Text("Male"),
                        value: "Male", groupValue: gender, onChanged: (value) {
                        setState(() {
                          gender=value.toString();
                        });

                      },),
                      RadioListTile(
                        title: Text("Female"),
                        value: "Female", groupValue: gender, onChanged: (value) {
                        setState(() {
                          gender=value.toString();
                        });

                      },),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            backgroundColor: Colors.redAccent,
                            side: BorderSide(
                              color: Colors.black
                            )
                          ),
                          onPressed: (){
                        if(ke.currentState!.validate())
                          {
                            p.addDataHome(TextName.text, TextAge.text, gender);
                          }


                      }, child: Text("SUBMIT"))


                    ],
                  ),
                ))
          ],


      ),
    );
  }
}
