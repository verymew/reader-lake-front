import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset('assets/images/reeds.svg', width: 340),
          ),
          Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/vitoria-regia-1.png',
                    width: 100,
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 48,
                          color: Color.fromRGBO(24, 92, 28, 1),
                          fontFamily: 'DM Sans', // fonte padrão
                          fontWeight: FontWeight.bold,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: 'Reader',
                            style: TextStyle(fontFamily: 'DM Sans'),
                          ),
                          TextSpan(
                            text: 'Lake', 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'DM Sans',
                              color: Color.fromRGBO(5, 5, 5, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  DefaultInput(
                    labelText: "Login",
                    hidden: false,
                    hintText: "Digite seu login",
                    controller: usernameController,
                  ),
                  DefaultInput(
                    labelText: "Senha",
                    hidden: true,
                    hintText: "Digite sua senha",
                    controller: passwordController,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 15,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50),
                        backgroundColor: const Color(0xFF183D11),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Entrar",
                        style: TextStyle(color: Colors.white),
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
          ),
        ],
      ),
    );
  }
}
