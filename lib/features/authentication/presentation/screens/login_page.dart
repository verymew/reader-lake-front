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
      backgroundColor: const Color.fromARGB(255, 9, 112, 49),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background-login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/vitoria-regia-1.png',
                width: 150,
                height: 150,
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
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process data.
                  }
                },
                style: ButtonStyle(),
                child: const Text("data"),
              ),
              TextButton(
                style: ButtonStyle(),
                onPressed: () {},
                child: const Text("Criar nova conta"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
