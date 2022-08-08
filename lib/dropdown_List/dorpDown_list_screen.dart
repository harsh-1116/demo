import 'package:flutter/material.dart';

import '../Constant/Constant_value.dart';

class DropDownListScreen extends StatefulWidget {
  const DropDownListScreen({Key? key}) : super(key: key);

  @override
  _DropDownListScreenState createState() => _DropDownListScreenState();
}

class _DropDownListScreenState extends State<DropDownListScreen> {

  int _value = -1;
  List<String> roleNames = [
    "admin",
    "sales",
    "project_manager",
    "developer"
  ];

  final items = ['item 1','item 2','item 3','item 4','item 5',];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDownList"),
      ),
      body: Center(
        child: Container(
         width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade300)
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            disabledHint: Text("Please select Item"),
            iconDisabledColor: Colors.pink,
            focusColor: Colors.grey.shade200,
            iconEnabledColor: Colors.blue,
            menuMaxHeight: 150,
            value: value ,
            hint: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("Please select Item",style: TextStyle(
             fontSize: 16,
             fontWeight: FontWeight.w600
           ),),),
            iconSize: 30,
            autofocus: false,
            icon: Icon(Icons.arrow_drop_down_sharp),
            isExpanded: true,
            elevation: 2,
            items: roleNames.map(buildMenuItem).toList(),
            onChanged: (value){
              setState(() {
                this.value = value;
              });
            },
          ),
        ),
          ),
      )
      );

  }



  DropdownMenuItem<String> buildMenuItem(String item){
    return DropdownMenuItem (
      value: item,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(item),
      ),

    );
  }


}
