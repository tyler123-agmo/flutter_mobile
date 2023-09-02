import 'package:flutter/material.dart';
import 'package:flutter_mobile/styles/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            const Spacer(),
            const Text(
              'Hello, Welcome',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Proceed to Login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Spacer(),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  print('Forgot is clicked');
                },
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                child: const Text('Forgot Password?'),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            SizedBox(
              width: 250,
              height: 48,
              child: ElevatedButton(
                  onPressed: () {
                    print('Login is Clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('Log in')),
            ),
            const Spacer(),
            const Text('Or Sign in with',
                style: TextStyle(
                  color: Colors.white,
                )),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  print('Google is Clicked');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text('Login with Google')
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  print(
                    'Facebook is Clicked',
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/facebook.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text('Login with Facebook')
                  ],
                ),
              ),
            ),
            Row(
              children: [
                const Text(
                  "Dont have account?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.primary,
                    ),
                    child: const Text('Sign Up',
                        style:
                            TextStyle(decoration: TextDecoration.underline))),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
