import 'package:flutter/material.dart';
import 'package:project6/features/profile/register.dart';
import '../../backend/API/login/LoginModel.dart';
import '../../backend/API/login/networkRequestLogin.dart';
import '../widget/button.dart';
import '../widget/text_form.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback onLoginSuccess; // Added callback property

  const LoginPage({Key? key, required this.onLoginSuccess}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    final username = _usernameController.text;
    final password = _passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      print('Please enter username and password');
      return;
    }

    LoginModel? loginResponse = await NetworkRequestLogin.login(username, password);

    if (loginResponse != null) {
      print('Successful login');
      print('User ID: ${loginResponse.id}');
      widget.onLoginSuccess(); // Call the callback on successful login
    } else {
      print('Failed to login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Login to your Account',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF51D4C2), // Custom color
              ),
            ),
            SizedBox(height: 8),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Register(),
                  ),
                );
              },
              child: Text(
                'Don\'t have an account? Sign Up',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 50),
            text_form('Please enter Username', 'Username', controller: _usernameController),
            SizedBox(height: 20),
            text_form('Please enter password', 'Password', obscureText: true, controller: _passwordController),
            SizedBox(height: 50),
            button(
              'LOG IN',
              _login,
            ),
          ],
        ),
      ),
    );
  }
}
