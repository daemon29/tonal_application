import 'package:flutter/material.dart';
import 'package:tonal_application/components/metrics.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tonel Demo"),
      ),
      body: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: const [
          Metrics(
            label: "Upper Body",
            weight: 45,
          ),
          Metrics(
            label: "Core",
            weight: 123,
          ),
          Metrics(
            label: "Lower Body",
            weight: 315,
          ),
          Metrics(
            label: "Core",
            weight: 50,
            unit: "kg",
          ),
        ],
      ),
    );
  }
}
