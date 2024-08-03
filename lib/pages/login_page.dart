import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 228, 237, 241),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 70),
              const Icon(Icons.person, size: 150, color: Color.fromARGB(255, 26, 64, 95)),
              const SizedBox(height: 50),
              Container(
                width: double.infinity,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe seu email:")),
                    Expanded(flex: 3, child: Text("Email"))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe a senha:")),
                    Expanded(flex: 3, child: Text("Senha"))
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                width: double.infinity,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                color: Colors.blue,
                child: const Text("Login"),
              ),
              const SizedBox(height: 20),
              Container(
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                child: const Text("Cadastrar"),
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}