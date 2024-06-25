import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Submission Confirmation'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.check_circle,
                color: Colors.lime,
                size: 100.0,
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Form Submitted Successfully!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              const Text(
                'You will be contacted shortly.',
                style: TextStyle(
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lime,
                ),
                child: const Text('Go to Home'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.lime, // Footer color
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
              },
              color: Colors.white,
            ),
            IconButton(
              icon: const Icon(Icons.message),
              onPressed: () {
                // Handle Message button functionality here
              },
              color: Colors.white,
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Handle My Profile button functionality here
              },
              color: Colors.white,
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Handle Menu button functionality here
              },
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
