import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
TextEditingController controller;
String errorMsg;
String ltext;
TextInputType type;


StyleText({required this.controller, required this.errorMsg, required this.ltext, required this.type});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:type ,
      validator: (value) {
        if(value==null || value.isEmpty)
          {
            return errorMsg;
          }
        return null;
      },
      controller: controller,
      decoration: InputDecoration(
        errorStyle: TextStyle(color: Colors.amber),
          labelText: ltext,
          labelStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(borderSide:BorderSide(color:Colors.grey,),borderRadius: BorderRadius.circular(30)),

      ),
    );
  }
}
