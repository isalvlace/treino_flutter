import 'package:flutter/material.dart';

class UserRegister extends StatelessWidget {
  const UserRegister({super.key});
  
  final String texto = 'Olá Mundo'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(texto)),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          children: [
            Text("Nome", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          ],
        )
      )
    );
  }
}