import 'package:flutter/material.dart';
import 'package:internet_connectivity_check/connectivity_provider.dart';
import 'package:internet_connectivity_check/home_page.dart';
// import 'package:internet_connectivity_check/no_internet.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ConnectivityProvider(),
          child: HomePage(),
        )
      ],
      child: MaterialApp(
        title: "Flutter internet connectivity",
        home: HomePage(),
      ),
    );
  }
}
