import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold95(title: 'Facebook', toolbar: actions: [],);
  }
}
