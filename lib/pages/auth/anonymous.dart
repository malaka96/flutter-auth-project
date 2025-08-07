import 'package:auth_tutorial/pages/home_page.dart';
import 'package:auth_tutorial/services/auth_service.dart';
import 'package:flutter/material.dart';

class Anonymous extends StatelessWidget {
  const Anonymous({super.key});

  void _signInAnonymously(BuildContext context) async {
    try {
      await AuthService().signInAnonymously();
      if (context.mounted) {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => HomePage()));
      }
    } catch (error) {
      print('error sign in anonymously from anonymous page $error');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Anonymous Login')),
      body: ElevatedButton(
        onPressed: () {
          _signInAnonymously(context);
        },
        child: Text('Sign Anonymously'),
      ),
    );
  }
}
