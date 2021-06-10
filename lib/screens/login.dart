import 'package:flutter/material.dart';
import 'package:hypernews/components/input_text.dart';
import 'package:hypernews/components/logo-v.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypernews/components/main_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg.png',
          fit: BoxFit.cover,
        ),
        Container(
          color: Colors.white.withOpacity(0.7),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            brightness: Brightness.dark,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                logo(context),
                welcome(context),
                registerMessage(context),
                registerForm(context)
              ],
            ),
          ),
        ),
      ],
    );
  }

  registerForm(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 42, vertical: 16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            HyperInputText(
              hintText: 'Email',
              labelText: 'Email',
              controller: emailController,
            ),
            HyperInputText(
              hintText: 'Password',
              labelText: 'Password',
              controller: passwordController,
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              width: double.infinity,
              height: 55,
              child: HyperButton(
                text: 'login',
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  registerMessage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 42,
      ),
      child: Text(
        'Register New Account',
        style: GoogleFonts.workSans(
          color: Theme.of(context).primaryColor,
          fontSize: 18,
        ),
      ),
    );
  }

  welcome(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16, left: 42, right: 42),
      child: Text(
        'Welcome',
        style: GoogleFonts.dancingScript(
          color: Theme.of(context).primaryColor,
          fontSize: 40,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  logo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 16,
        left: 42,
        right: 42,
      ),
      child: LogoVertical(),
    );
  }
}
