import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Widget commanTextField(
 String hinttext,
    {
  Widget? prefixIcon,
  String? labletext,
      bool? isEnable = false,
  Widget? Icon,
      Color color = Colors.teal,
      Widget? suffixIcon,
}){
  return TextField(
    decoration: InputDecoration(
      hintText: hinttext,
      prefixIcon: prefixIcon,
      icon: Icon,
      labelText: labletext,
      alignLabelWithHint: false,
      enabled: false,
      suffixIcon: suffixIcon,
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: color,
          style: BorderStyle.none,


        )
      )


    ),
  );
}