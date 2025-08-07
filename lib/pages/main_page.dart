import 'package:auth_tutorial/pages/auth/anonymous.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Anonymous(),
    );
  }
}