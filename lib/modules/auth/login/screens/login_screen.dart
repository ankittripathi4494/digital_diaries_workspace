import 'package:bowl_app/global/widgets/appbars.dart';
import 'package:bowl_app/global/widgets/form_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  LoginScreen({super.key, this.arguments});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarsWidgets.appBarVer3(titleText: "SignUp"),
      body: Form(
        child: ListView(
          children: [
            FormWidgets.getTextFormField(
                controller: usernameController,
                formEnabled: true,
                keyboardType: TextInputType.text,
                onChanged: (value) {},
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]')),
                  FilteringTextInputFormatter.deny(RegExp(r'[\s]')),
                ],
                labelText: "Enter Username",
                hintText: "johndooe"),
            FormWidgets.getTextFormField(
                controller: passwordController,
                formEnabled: true,
                keyboardType: TextInputType.text,
                onChanged: (value) {},
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp(r'[a-zA-Z0-9\s@.#]')),
                ],
                labelText: "Enter Password",
                hintText: "johndoe@123"),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundBuilder: (context, states, child) => Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xff0f0c29),
                            Color(0xff302b63),
                            Color(0xff24243e)
                          ]),
                    ),
                    child: child,
                  ),
                ),
                onPressed: () {},
                label: const Text("Login"),
                icon: const Icon(Icons.sign_language),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
