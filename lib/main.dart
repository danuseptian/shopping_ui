import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopedia_danu/utilities/intro_screen.dart';

import 'modules/dashboard/dashboard_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: FutureBuilder(
          future: Future.delayed(Duration(seconds: 2)),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return DashboardView();
            }
            return LoadingScreen();
          },
        ));
  }
}
