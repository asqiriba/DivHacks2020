import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:col_net/models/task_data.dart';
import 'ui/login_screen.dart';
import 'ui/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor:
          SystemUiOverlayStyle.dark.systemNavigationBarColor,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: MaterialColor(0xFF571845, {
            50: Color(0xFF571845),
            100: Color(0xFF571845),
            200: Color(0xFF571845),
            300: Color(0xFF571845),
            400: Color(0xFF571845),
            500: Color(0xFF571845),
            600: Color(0xFF571845),
            700: Color(0xFF571845),
            800: Color(0xFF571845),
            900: Color(0xFF571840),
          }),
          //primaryColorDark: Color(0xFF900c3e),
          accentColor: Color(0xFFff5733),
          textTheme: TextTheme(
            display2: TextStyle(
              fontFamily: 'Turret Road',
              fontSize: 45.0,
              color: Color(0xFFffc300),
            ),
            button: TextStyle(
              fontFamily: 'Merienda',
            ),
            caption: TextStyle(
              fontFamily: 'Merienda',
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
              color: Color(0xffc70039),
            ),
            display4: TextStyle(fontFamily: 'Merienda'),
            display3: TextStyle(fontFamily: 'Merienda'),
            display1: TextStyle(fontFamily: 'Merienda'),
            headline: TextStyle(fontFamily: 'Merienda'),
            title: TextStyle(fontFamily: 'Merienda'),
            subhead: TextStyle(fontFamily: 'Merienda'),
            body2: TextStyle(fontFamily: 'Merienda'),
            body1: TextStyle(fontFamily: 'Merienda'),
            subtitle: TextStyle(fontFamily: 'Merienda'),
            overline: TextStyle(fontFamily: 'Merienda'),
          ),
        ),
        initialRoute: '/main',
        routes: {
          '/login': (context) => LoginScreen(),
          '/main': (context) => MainScreen(),
        },
      ),
    );
  }
}
