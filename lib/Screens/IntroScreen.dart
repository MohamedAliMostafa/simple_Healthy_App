import 'package:flutter/material.dart';
import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart';
import 'package:healthy/Screens/HomeScreen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
class Intro extends StatefulWidget {
  static const String routename="intro";

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  List<OnbordingData> list = [
    OnbordingData(
      image: AssetImage("assets/images/start.png"),
      titleText:Text("Welcome To Healthy App",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Color(0XFFff6584) ),),
      descText: LoadingAnimationWidget.flickr(leftDotColor: Colors.black, rightDotColor: Color(0XFFff6584), size: 30),
    ),
    OnbordingData(
      image: AssetImage("assets/images/health.png"),
      titleText:Center(child: Text("Take a Decision and Follow a Good lifestyle",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color:Colors.black),)),
      descText:LoadingAnimationWidget.flickr(leftDotColor:Color(0xffe1c340), rightDotColor: Color(0xffd0cde1), size: 30),
    ),
    OnbordingData(
      image: AssetImage("assets/images/bmi.png"),
      titleText:Text("On Healthy App you can Calculate Your BMI Which From You can Know if you are UnderWeight,Normal,OverWeight,or Obesity",textAlign: TextAlign.center,style: TextStyle(fontSize:20,fontWeight: FontWeight.w700 ),),
      descText: LoadingAnimationWidget.flickr(leftDotColor:Color(0xffe1c340), rightDotColor: Color(0xff274382), size: 30),
    ),
  ];
  Widget build(BuildContext context) {
    return IntroScreen(
      onbordingDataList: list,
      colors: [
        //list of colors for per pages
        Colors.white,
        Colors.red,
      ],
      pageRoute: MaterialPageRoute(builder: (context) => Home()),
      nextButton: Text(
        "NEXT",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      lastButton: Text(
        "GOT IT",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      skipButton: Text(
        "SKIP",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      selectedDotColor: Colors.orange,
      unSelectdDotColor: Colors.grey,
    );
  }
}
