import 'package:flutter/material.dart';
import 'package:readerlake/shared/common_widgets/default_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 255, 230, 1.0),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/vitoria-regia-1.png',
              width: 100,
              height: 100,
            ),
            DefaultInput(
              labelText: "Login",
              hidden: false,
              hintText: "hintText",
              controller: usernameController,
            ),
            DefaultInput(
              labelText: "Senha",
              hidden: false,
              hintText: "hintText",
              controller: passwordController,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: const Color(0xFF183D11),
                ),
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {}
                },
                child: const Text(
                  "Entrar",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Criar nova conta",
                style: TextStyle(color: Color.fromRGBO(22, 37, 23, 1)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
