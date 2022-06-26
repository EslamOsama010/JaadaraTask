import 'package:flutter/material.dart';
import 'package:task/helper/end%20point.dart';
import 'package:task/helper/shared_pref.dart';
import 'package:task/screens/home/view.dart';
import 'helper/dio.dart';
import 'screens/login/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await SharedPref.init();

  Widget widget;
  token = SharedPref.getData(key: 'token');
  if (token != null) {
    widget = HomeScreen();
  } else {
    widget = LoginScreen();
  }
  runApp(MyApp(
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, this.startWidget}) : super(key: key);
  final startWidget;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: startWidget,
    );
  }
}
