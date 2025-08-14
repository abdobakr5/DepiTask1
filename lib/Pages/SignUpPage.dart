import 'package:flutter/material.dart';
import '../Widgets/CustomTextField.dart';

class Signuppage extends StatelessWidget {
  const Signuppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/photos/logo.png', height: 150),
            const SizedBox(height: 16),
            Text(
              "Create An Account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.purple[900],
              ),
            ),
            const SizedBox(height: 24),

            customTextField(
              label: "Name",
              hint: "username",
              prefixIcon: Icons.person_outline,
            ),
            customTextField(
              label: "Email Address",
              hint: "example@gmail.com",
              prefixIcon: Icons.email_outlined,
            ),
            customTextField(
              label: "Password",
              hint: "password",
              isPassword: true,
              prefixIcon: Icons.lock_outline,
            ),
            customTextField(
              label: "Confirm Password",
              hint: "Confirm password",
              prefixIcon: Icons.lock_outline,
              isPassword: true,
            ),

            const SizedBox(height: 36),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ),

            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Have an account already? "),
                Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.purple[800],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
