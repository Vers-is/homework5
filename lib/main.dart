import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SignInPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  final Color mainColor = const Color(0xFF274B53);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                'Sign In',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              Text(
                'EMAIL OR PHONE',
                style: TextStyle(fontWeight: FontWeight.bold, color: mainColor),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                decoration: InputDecoration(
                  hintText: 'example@gmail.com',
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 159, 157, 157),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'PASSWORD',
                style: TextStyle(fontWeight: FontWeight.bold, color: mainColor),
              ),
              TextField(
                obscureText: true,
                style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Color.fromARGB(221, 96, 96, 96)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Log In',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Center(child: Text('OR')),
              const SizedBox(height: 20),
              SignInButton(
                icon: Icons.mail,
                iconColor: Colors.red,
                text: 'Continue With Google',
              ),
              const SizedBox(height: 10),
              SignInButton(
                icon: Icons.facebook,
                iconColor: Colors.blue,
                text: 'Continue With Facebook',
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t Have an account yet?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;

  const SignInButton({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: OutlinedButton.icon(
        icon: Icon(icon, color: iconColor, size: 28),
        label: Text(text, style: const TextStyle(color: Colors.black)),
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: Colors.black),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
