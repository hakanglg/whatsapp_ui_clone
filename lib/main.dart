import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/color.dart';

import 'features/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WhatsApp',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            floatingActionButtonTheme:
                FloatingActionButtonThemeData(backgroundColor: tabColor),
            iconTheme: IconThemeData(color: Colors.grey),
            textTheme: TextTheme(
              headline6: TextStyle(color: textColor),
              subtitle2: TextStyle(color: Colors.grey[500]),
              bodyText1:
                  TextStyle(color: textColor, fontWeight: FontWeight.bold),
            ),
            indicatorColor: tabColor,
            tabBarTheme: TabBarTheme(
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold)),
            scaffoldBackgroundColor: backgroundColor,
            appBarTheme: AppBarTheme(
                color: appBarColor,
                titleTextStyle: TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.bold))),
        home: HomeView());
  }
}
