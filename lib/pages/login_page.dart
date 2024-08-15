import 'package:flutter/material.dart';
import 'package:treino_flutter/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController(text: "");
  var passController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 237, 241),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Image.asset(
                  'assets/img/white_gift_box.png',
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Já possui cadastro?", 
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Faça seu login",
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                const SizedBox(height: 30),
                _buildTextField(
                  controller: emailController,
                  label: "Informe seu email:",
                  hintText: "Email",
                  icon: Icons.person,
                ),
                const SizedBox(height: 15),
                _buildTextField(
                  controller: passController,
                  label: "Informe a senha:",
                  hintText: "Senha",
                  icon: Icons.lock,
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                _buildLoginButton(emailController, passController),
                const SizedBox(height: 20),
                _buildFooterLinks(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hintText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 2, 47, 83)),
        ),
        const SizedBox(height: 5),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(icon, color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton(TextEditingController emailController, TextEditingController passController) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        if (emailController.text.trim() == "isaacdavid797@gmail.com" && passController.text.trim() == "666") {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const MainPage(),
            ),
          ).then((_) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Login successful!")),
            );
          });
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Erro ao tentar logar!")),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        backgroundColor: Colors.blue,
        textStyle: const TextStyle(fontSize: 16),
      ),
      child: const Text("Login"),
    ),
  );
}

  Widget _buildFooterLinks() {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // implementação de esqueceu a senha aqui
          },
          child: const Text(
            "Esqueci minha senha",
            style: TextStyle(
              color: Color.fromARGB(255, 140, 59, 231),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            // implementação de criar a conta aqui
          },
          child: const Text(
            "Criar conta",
            style: TextStyle(
              color: Color.fromARGB(255, 13, 100, 16),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}