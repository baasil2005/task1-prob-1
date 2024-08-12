import 'package:flutter/material.dart';
import 'package:partico/Pages/_terms_and_conditions.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        primary: true,
        scrollDirection: Axis.vertical,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildLogo(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ), // 5% of screen height
            _buildTextField("Full Name"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ), // 2% of screen height
            _buildTextField("Email"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ), // 2% of screen height
            _buildTextField("Username"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ), // 2% of screen height
            _buildTextField("Password", isPassword: true),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ), // 2% of screen height
            _buildTextField("Confirm Password", isPassword: true),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ), // 2% of screen height
            _buildTermsAndConditions(context),
            _buildSignUpButton(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            _buildFooterLinks(context),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Column(
      children: [
        Image.network(
          'https://cdn.pixabay.com/photo/2024/05/09/12/06/fruit-8750860_1280.jpg',
          fit: BoxFit.fill,
        ),
        SizedBox(height: 10),
        Text(
          'Sign Up',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.08,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildTextField(String hintText, {bool isPassword = false}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: TextField(
        maxLines: 1,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
      ),
    );
  }

  Widget _buildSignUpButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "Sign Up",
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget _buildTermsAndConditions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value ?? false;
            });
          },
        ),
        TextButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TermsAndConditionsPage()),
            );
          }, child: Text(
          
          'I agree to the terms and conditions',
          style: TextStyle(fontSize: 16,color: Colors.black),
        ),
        style: ButtonStyle(
          padding: WidgetStateProperty.all(EdgeInsets.zero),
          backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
        ),
        ) 
      ],
    );
  }

  Widget _buildFooterLinks(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20), // Add some space between the text links
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 16,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
              ),
            )
          ],
        )
      ],
    );
  }
}
