import 'package:chatting_app/components/my_button.dart';
import 'package:chatting_app/components/my_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  // emial and psw controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),

            const SizedBox(height: 50),

            // Welcome back msg
            Text(
              'Welcome back, we missed you!',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
                fontFamily: 'Inter',
              ),
            ),

            const SizedBox(height: 25),

            // Email
            MyTextField(
              hintText: 'Email',
              hide: false,
              controller: _emailController,
            ),

            const SizedBox(height: 10),

            // Psw
            MyTextField(
              hintText: 'Password',
              hide: true,
              controller: _passwordController,
            ),

            const SizedBox(height: 25),

            // Login
            MyButton(
              text: 'Login',
              onTap: login,
            ),

            const SizedBox(height: 25),

            // Register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
