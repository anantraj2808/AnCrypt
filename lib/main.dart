import 'package:flutter/material.dart';

import 'Presentation/home.dart';
import 'Presentation/set_pin_screen.dart';
import 'Presentation/splash_screen.dart';
import 'Services/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnCrypt',
      home: FutureBuilder(
          future: SharedPrefs.getIsExistingUserSharedPrefs(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting)
              return SplashScreen();
            return (snapshot.hasData && snapshot.data) ? Home() : SetPinScreen();
          }
      ),
    );
  }
}