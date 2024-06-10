import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project6/features/sub_route/forgot_password.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final Color myColor = Color.fromARGB(255, 81, 212, 194);
  final Color darkMyColor = Color.fromARGB(255, 35, 128, 116);
  final Color compColor = Color(0xFFD45163);
  final EdgeInsets commonPadding = const EdgeInsets.all(12.0);
  final double borderRadius = 32.0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              _buildHeader(),
              Center(
                child: _buildLoginForm(screenHeight),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 40.0),
          child: Text(
            'Login',
            style: TextStyle(
              color: myColor,
              fontWeight: FontWeight.bold,
              fontSize: 48,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginForm(double screenHeight) {
    return Container(
      width: double.infinity,
      height: screenHeight * 0.45,
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: commonPadding,
            child: _buildTextFormField('Email', 'Enter email'),
          ),
          Padding(
            padding: commonPadding,
            child: _buildTextFormField('Password', 'Password'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ForgotPassword(),
                ),
              );
            },
            child: Text(
              'Forgot password?',
              style: TextStyle(color: darkMyColor),
            ),
          ),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildTextFormField(String label, String hintText) {
    return TextFormField(
      decoration: InputDecoration(
        label: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(label),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black),
        labelStyle: TextStyle(color: Colors.black),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: compColor,
            foregroundColor: Colors.black,
            elevation: 0,
            minimumSize: Size(150, 50),
          ),
          child: Text(
            'Sign in',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: compColor,
            foregroundColor: Colors.black,
            elevation: 0,
            minimumSize: Size(150, 50),
          ),
          child: Text(
            'Log in',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
