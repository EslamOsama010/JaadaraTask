import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

customToast(String message){
  return  Fluttertoast.showToast(
    msg:message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 5,
    backgroundColor: Colors.green,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}