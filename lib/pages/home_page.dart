import 'package:auth_tutorial/services/auth_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final String userId = AuthService().getCurrentUser()?.uid ?? "unkown";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'),),
      body: Center(child: Column(children: [
        Text('Signin successfull'),
        SizedBox(height: 10,),
        Text('User id : $userId'),
      ],),),
    );
  }
}