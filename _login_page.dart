import 'package:flutter/material.dart';
import 'package:partico/Pages/_main_page.dart';
import 'package:partico/Pages/_signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                height: MediaQuery.of(context).size.height *
                    0.05), // 5% of screen height
            _buildTextFields(),
            SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.05), // 5% of screen height
            _buildLoginButton(context),
            SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.01), // 2% of screen height
            _buildFooterLinks(context),
            SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.02), // 2% of screen height
            _buildSocialLoginButtons(context),
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
          'https://cdn.pixabay.com/photo/2021/08/12/12/54/love-in-a-mist-6540738_1280.jpg', // Replace with your logo URL
          fit: BoxFit.fill,
        ),
        SizedBox(height: 10),
        Text(
          'hi',
          style: TextStyle(
            fontSize:
                MediaQuery.of(context).size.width * 0.08, // 8% of screen width
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildTextFields() {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8, // 80% of screen width
          child: TextField(
            maxLines: 1,
            decoration: InputDecoration(
              labelText: "Email/Username",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            ),
          ),
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height *
                0.02), // 2% of screen height
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8, // 80% of screen width
          child: TextField(
            maxLines: 1,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8, // 80% of screen width
      child: ElevatedButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainPage()));},
        child: Text(
          "Login",
          style: TextStyle(
              fontSize: 18), // Increase font size for better visibility
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

  Widget _buildSocialLoginButtons(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Or login with',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSocialButton(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1024px-Google_%22G%22_logo.svg.png',
              'Google',
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSocialButton(String imageUrl, String label,
      {required VoidCallback onPressed}) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Image.network(imageUrl, height: 24),
      label: Text(label),
    );
  }

  Widget _buildFooterLinks(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    fontSize: 16), // Increase font size for better visibility
              ),
            )
          ],
        ),
        SizedBox(height: 20), // Add some space between the text links
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: TextStyle(
                  fontSize: 16), // Increase font size for better visibility
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 16,
                ),
              ),
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all<Color>(Colors.transparent),
              ),
            )
          ],
        )
      ],
    );
  }
}
