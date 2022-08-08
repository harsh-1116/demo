import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Constant/Image_assets.dart';

/*
class CommonBottomSheetClass extends StatefulWidget {
  final roleName;

  CommonBottomSheetClass({required this.roleName});

  @override
  State<StatefulWidget> createState() {
    return CommonBottomSheetClassState();
  }
}

class CommonBottomSheetClassState extends State<CommonBottomSheetClass> {
  int _value = -1;
  List<String> roleNames = [
    Strings.admin,
    Strings.sales,
    Strings.project_manager,
    Strings.developer
  ];

  @override
  Widget build(BuildContext context) {
    return sortByRadioButton();
  }

  Widget sortByRadioButton() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Container(
          //   // padding: EdgeInsets.all(10),
          //   decoration: BoxDecoration(),
          //   padding: EdgeInsets.only(top: 0, right: 0, left: 10, bottom: 12),
          //   child:
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         Strings.admin,
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontFamily: Strings.fontFamily,
          //           fontSize: 14,
          //           fontWeight: FontWeight.normal,
          //         ),
          //       ),
          //       GestureDetector(
          //         onTap: () {
          //           setState(
          //             () {
          //               _value = 0;
          //               widget.roleName(roleNames[0], "1");
          //               Navigator.pop(context);
          //             },
          //           );
          //         },
          //         child: Container(
          //           height: 20,
          //           width: 56,
          //           child: _value == 0
          //               ? SvgPicture.asset(
          //                   ImageAssets.selected_icon,
          //                 )
          //               : SvgPicture.asset(
          //                   ImageAssets.deselected_icon,
          //                 ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
            padding: EdgeInsets.only(top: 0, right: 0, left: 10, bottom: 12),
            decoration: BoxDecoration(
              border: Border(
                // top: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.sales,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: Strings.fontFamily,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(
                          () {
                        _value = 1;
                        widget.roleName(roleNames[1], "1");
                        Navigator.pop(context);
                      },
                    );
                  },
                  child: Container(
                    height: 20,
                    width: 56,
                    child: _value == 1
                        ? SvgPicture.asset(
                      ImageAssets.selected_icon,
                    )
                        : SvgPicture.asset(
                      ImageAssets.deselected_icon,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 12, right: 0, left: 10, bottom: 12),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.project_manager,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: Strings.fontFamily,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(
                          () {
                        _value = 2;
                        widget.roleName(roleNames[2], "2");
                        Navigator.pop(context);
                      },
                    );
                  },
                  child: Container(
                    height: 20,
                    width: 56,
                    child: _value == 2
                        ? SvgPicture.asset(
                      ImageAssets.selected_icon,
                    )
                        : SvgPicture.asset(
                      ImageAssets.deselected_icon,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 12, right: 0, left: 10, bottom: 0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey, width: 0.5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.developer,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: Strings.fontFamily,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(
                          () {
                        _value = 3;
                        widget.roleName(roleNames[3], "3");
                        Navigator.pop(context);
                      },
                    );
                  },
                  child: Container(
                    height: 20,
                    width: 56,
                    child: _value == 3
                        ? SvgPicture.asset(
                      ImageAssets.selected_icon,
                    )
                        : SvgPicture.asset(
                      ImageAssets.deselected_icon,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}*/


class CommonBottomSheetClass extends StatefulWidget {
  final roleName;

  CommonBottomSheetClass({required this.roleName});

  @override
  State<StatefulWidget> createState() {
    return CommonBottomSheetClassState();
  }
}

class CommonBottomSheetClassState extends State<CommonBottomSheetClass> {
  int _value = -1;
  List<String> roleNames = [
    "Strings.admin",
    "Strings.sales",
    "Strings.project_manager",
    "Strings.developer"
  ];

  @override
  Widget build(BuildContext context) {
    return sortByRadioButton();

  }

  Widget sortByRadioButton() {
    return Container(

      height: 170,
      color: Colors.transparent,
      child: Row(

        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child:
          Container(
            color: Colors.white10,
          )),
          Container(
            height: 200,
            width: 320,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(15)
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15  , right: 0, left: 10, bottom: 12),
                  decoration: BoxDecoration(
                    border: Border(
                      // top: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Strings.sales",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(
                                () {
                              _value = 1;
                              widget.roleName(roleNames[1], "1");
                              Navigator.pop(context);
                            },
                          );
                        },
                        child: Container(
                          height: 20,
                          width: 56,
                          child: _value == 1
                              ? SvgPicture.asset(
                            ImageAssets.selected_icon,
                          )
                              : SvgPicture.asset(
                            ImageAssets.deselected_icon,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 12, right: 0, left: 10, bottom: 12),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Strings.project_manager",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(
                                () {
                              _value = 2;
                              widget.roleName(roleNames[2], "2");
                              Navigator.pop(context);
                            },
                          );
                        },
                        child: Container(
                          height: 20,
                          width: 56,
                          child: _value == 2
                              ? SvgPicture.asset(
                            ImageAssets.selected_icon,
                          )
                              : SvgPicture.asset(
                            ImageAssets.deselected_icon,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 12, right: 0, left: 10, bottom: 15),
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Strings.developer",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(
                                () {
                              _value = 3;
                              widget.roleName(roleNames[3], "3");
                              Navigator.pop(context);
                            },
                          );
                        },
                        child: Container(
                          height: 20,
                          width: 56,
                          child: _value == 3
                              ? SvgPicture.asset(
                            ImageAssets.selected_icon,
                          )
                              : SvgPicture.asset(
                            ImageAssets.deselected_icon,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
