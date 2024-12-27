import 'package:flutter/material.dart';
import 'package:restaurapp/screens/auth/registration_page.dart';
import 'package:restaurapp/screens/main/main_page.dart';
import 'package:restaurapp/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomTextField(
              controller: emailController,
              hintText: 'Enter your email (type: user@mail.com)',
              icon: Icons.email,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              controller: passwordController,
              hintText: 'Enter your password (type: user123)',
              icon: Icons.lock,
              obscureText: !_passwordVisible,
              suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                String email = emailController.text;
                String password = passwordController.text;

                if (email.isNotEmpty && password.isNotEmpty) {
                  // Handle login logic here
                  print('Email: $email');
                  print('Password: $password');

                  if (email == 'user@mail.com' && password == 'user123') {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MainPage();
                    }));

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Login Success'),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Invalid email or password'),
                      ),
                    );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please fill in all fields'),
                    ),
                  );
                }
              },
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RegistrationPage();
                }));
              },
              child: const Text('Don\'t have an account? Sign up here'),
            ),
          ],
        ),
      ),
    );
  }
}
