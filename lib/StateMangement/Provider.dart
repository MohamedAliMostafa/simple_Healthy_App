import 'package:flutter/widgets.dart';

class Myprovidr extends ChangeNotifier
{
  String Name="";
  String age="";
  String gender="";
  String weight="";
  String height="";
  String status="";
  String bmi="";
  void addDataHome(String name,String ag ,String gen)
  {
    Name=name;
    age=ag;
    gender=gen;
  }
  void addDatabmi(String weig,String heig ,String statu,String bm)
  {
    weight=weig;
    height=heig;
    status=statu;
    bmi=bm;
  }
}