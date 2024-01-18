import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_login/widgets/rounded_circular_button.dart';
import 'package:responsive_login/widgets/rounded_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(217, 247, 246, 1),
        body: _buildUI(context),
      ),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Column(
      children: [
        _header(context),
        _loginForm(context),
      ],
    );
  }

  Widget _header(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.23,
      color: const Color.fromARGB(133, 2, 101, 80),
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text("Sign In",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                )),
          ),
          Icon(
            Icons.login,
            color: Colors.black,
            size: MediaQuery.of(context).size.width * 0.3,
          )
        ],
      ),
    );
  }

  Widget _loginForm(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.7,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 15),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _formFields(context),
                  _bottomButton(context),
                ]),
          ),
        ));
  }

  Widget _formFields(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RoundedTextFormField(
            prefixedIcon: Icons.email_outlined,
            hint_text: "Email Address",
          ),
          RoundedTextFormField(
            prefixedIcon: Icons.lock_clock_outlined,
            hint_text: "Password",
            obscureText: true,
          ),
          Text(
            "Forgot Password ?",
            style: TextStyle(
                color: Color.fromARGB(133, 2, 101, 85),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _bottomButton(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.05,
          child: RoundedCircularButton(text: "Sign In "),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 2),
          child: Text(
            "I Don't Have an Account",
            style: TextStyle(
                color: Color.fromARGB(133, 2, 101, 85),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
