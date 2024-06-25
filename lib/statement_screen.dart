import 'package:flutter/material.dart';

class StatementScreen extends StatelessWidget {
  const StatementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statements'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MediumSquareButton(
                onPressed: () {
                  // Handle TPS Statement button functionality here
                },
                color: Colors.teal,
                text: 'TPS Statement\n(Tenant Purchase Scheme)',
                icon: Icons.assignment,
              ),
              const SizedBox(height: 20.0),
              MediumSquareButton(
                onPressed: () {
                  // Handle Rental Statements button functionality here
                },
                color: Colors.teal,
                text: 'Rental Statements',
                icon: Icons.receipt,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumSquareButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final String text;
  final IconData icon;

  const MediumSquareButton({
    super.key,
    required this.onPressed,
    required this.color,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.0, // Adjusted the size to fit well
      height: 150.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50.0,
              color: Colors.white,
            ),
            const SizedBox(height: 10.0),
            Text(
              text,
              style: const TextStyle(fontSize: 12.0, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
