import 'package:flutter/material.dart';
import 'package:login_app/src/utils/theme/theme.dart';

import 'src/features/authentication/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login App Demo"),
        leading: const Icon(Icons.ondemand_video),
      ),
     
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text("Home Dashboard"),
        ),
      ),
    );
  }
}
  