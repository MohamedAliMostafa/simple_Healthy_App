
import 'package:flutter/material.dart';
import 'package:healthy/StateMangement/Provider.dart';
import 'package:healthy/Widget/TextStyle.dart';
import 'package:provider/provider.dart';

class BMI extends StatefulWidget {

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
var weightCon=TextEditingController();

var heighttCon=TextEditingController();

String bm="";

String states="";

var k=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var p=Provider.of<Myprovidr>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: Form(
        key: k,
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: BorderSide(
                  color: Colors.black
                )
              ),
              margin: EdgeInsets.symmetric(vertical: 50,horizontal: 30),
              color: Colors.blueGrey,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  const SizedBox(height: 18,),
                  StyleText(controller: weightCon, errorMsg: "Required field", ltext:"enter your bm in Kg", type:TextInputType.number),
                  const SizedBox(height: 30,),
                  StyleText(controller: heighttCon, errorMsg: "Required field", ltext:"enter your Hight in Cm", type:TextInputType.number),
                  const SizedBox(height: 30,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          side: BorderSide(
                              color: Colors.black
                          )
                      ),
                      onPressed: (){
                        if(k.currentState!.validate())
                          {
                            setState(() {
                              calBMI(double.parse(weightCon.text), double.parse(heighttCon.text));
                            });
                            p.addDatabmi(weightCon.text, heighttCon.text, states, bm);



                          }

                      }, child: Text("Calculate BMI")),
                  const SizedBox(height: 30,),
                  Visibility(
                    visible: bm.isEmpty && states.isEmpty?false:true,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15)),

                      color: Colors.teal,
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text(bm,style: TextStyle(fontSize: 20,color: Colors.amber),),
                            Text(states,style: TextStyle(fontSize: 20,color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),

                ],),
              ) ,
            ),

          ],
        ),
      ),
    );
  }

  void calBMI(double Weight,double Height)
  {
    double HeightMeter=Height/100;
    double bmi=Weight/ (HeightMeter*HeightMeter);
    bm=bmi.toStringAsFixed(1);
    if(bmi<18.5)
      {
        states="UnderWeight";
      }
    else if(bmi>=18.5 &&bmi<25)
      {
        states="Normal";
      }
    else if(bmi>=25 &&bmi<30)
    {
      states="OverWeight";
    }
    else
      {
        states ="Obese";
      }
  }
}
