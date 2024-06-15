import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project6/features/profile/login.dart';
import 'package:project6/features/widget/text_form.dart';
import '../../backend/API/register/networkRequestRegister.dart';
import '../widget/button.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _register() async {
    final username = _usernameController.text;
    final email = _emailController.text;
    final password = _passwordController.text;

    if (username.isEmpty || email.isEmpty || password.isEmpty) {
      print('Please fill all fields');
      return;
    }

    String? registerResponse = await NetworkRequestRegister.register(username, email, password);

    if (registerResponse != null) {
      print('User has been created successfully');
      Navigator.pop(context);
    } else {
      print('Failed to register');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                'Create new Account',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF51D4C2),
                ),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Already Registered? Login',
                  style: TextStyle(
                    color: Color(0xFF51D4C2),
                  ),
                ),
              ),
              SizedBox(height: 50),
              text_form('Please enter your Username', 'Username', controller: _usernameController),
              SizedBox(height: 20),
              text_form('Please enter Email', 'Email', controller: _emailController),
              SizedBox(height: 20),
              text_form('Please enter Password', 'Password', obscureText: true, controller: _passwordController),
              SizedBox(height: 50),
              button(
                'SIGN UP',
                _register,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
