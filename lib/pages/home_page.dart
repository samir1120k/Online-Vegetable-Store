import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app bar"),
      ),
      body: Center(
        child: Container(
          child: Text("new project"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
