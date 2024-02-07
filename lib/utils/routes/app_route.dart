import 'package:exam1_app/screen/addData/addData_screen.dart';
import 'package:exam1_app/screen/home/home_screen.dart';
import 'package:flutter/cupertino.dart';

Map <String,WidgetBuilder> app_route={
  "/":(context) => HomeScreen(),
  "add_data":(context) => AddDataScreen(),
};