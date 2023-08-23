import 'package:flutter/material.dart';
import 'package:login_app/src/utils/theme/theme.dart';

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
      home: const MyHomePage(),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_shopping_cart_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Text(
            "Heading",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text("Sub-heading", style: Theme.of(context).textTheme.headlineMedium),
          Text("Paragraph", style: Theme.of(context).textTheme.bodyMedium),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Elevated Button"),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("Outlined Button"),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Image(image: AssetImage("assets/images/s5.png")),
          )
        ]),
      ),
    );
  }
}
