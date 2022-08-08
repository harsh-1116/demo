// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/Constant/Image_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constant/Constant_value.dart';
import '../dropdown_List/dorpDown_list_screen.dart';

class MainScreenWeb extends StatefulWidget {
  const MainScreenWeb({Key? key}) : super(key: key);

  @override
  _MainScreenWebState createState() => _MainScreenWebState();
}

class _MainScreenWebState extends State<MainScreenWeb> {

  int state = Constant.mainScreenWeb;
  int stateInternal = Constant.dashBoard;

 /* DateTime? dateBasicInfo1(String dateFromAPI) {
    if (dateFromAPI == "") {
      return null;
    }
    var df = DateFormat("dd/MM/yyyy");
    var dt = df.parse(dateFromAPI);
    var returnType = DateFormat('dd/MMM/yyyy').format(dt).toString();
    return DateFormat('dd/MMM/yyyy').parse(returnType);
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Row(
        children: [
          Container(
            width: 0,
            child: Expanded(
                child: ListView(
                  primary: true,
                  shrinkWrap: true,
                  children: [
                  Text(
                      "Drawer"
                  )
                     ],
                ) ),
          ),
          VerticalDivider(
            width: 2,
          ),
          Expanded(
            flex: 7,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Scaffold(
                      // appBar: AppBar(
                      //   backgroundColor: Colors.deepOrangeAccent,
                      //   title: Text("Common App Bar"),
                      //   elevation: 2,
                      // /*  leading: Icon(Icons.drag_handle_outlined),*/
                      // ),
                      body:  Container(
                        child: Center(
                          child: Text(
                              "Main View"
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ) ),

        ],
      )


    );
  }

  mainScreenView(){
    return Scaffold(

      body: Row(
        children: [
          mainDrawer(),
          VerticalDivider(
            width: 1,
            color: Colors.black,
          ),
          Expanded(child: _currentPage())
        ],
      ),
    );
  }

  mainDrawer(){
    return Container(
      width: 350,
      color: Colors.red,
    );
  }

  _currentPage(){
    switch(stateInternal){
      case Constant.dropDownScreen : {
        return DropDownListScreen();
      }

    }
  }

  dashBoard(){
    return  Container(
      height: 200,
      width: 500,
      color: Colors.grey,
      child: const Center(child: Text(
          "Haiyi Welcome"
      )),
    );
  }

  }

  class MainScreenMobile extends StatefulWidget {
    const MainScreenMobile({Key? key}) : super(key: key);

    @override
    _MainScreenMobileState createState() => _MainScreenMobileState();
  }

  class _MainScreenMobileState extends State<MainScreenMobile> {
    @override
    Widget build(BuildContext context) {
      return Container();
    }
  }

