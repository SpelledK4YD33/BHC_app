import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Landing.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Column(
            children: <Widget>[
              const SizedBox(height: 100.0),
              // Logo
              Center(
                child: Image.asset(
                  'assets/images/logo_1.png',
                  height: 150.0, // Adjust the height according to your needs
                ),
              ),
              const SizedBox(height: 50.0),
              // Welcome text
              const Center(
                child: Text(
                  'Welcome to BHC App',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(),
              // Buttons section
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 230, 153, 37),
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                      ),
                      child: const Text('Sign Up'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xfffaa21b),
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                      ),
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


