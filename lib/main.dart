import 'package:flutter/material.dart';
import 'package:food_demo/pages/splash/splash_screen.dart';
import 'package:food_demo/routes_management/routes_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cookpedia Food Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: RoutesManager.generateRoute,
      navigatorKey: RoutesManager.globalNavigatorKey,
    );
  }
}
