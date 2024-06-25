import 'package:flutter/material.dart';
import 'house_screen.dart';
import 'townhouse_screen.dart';
import 'flat_screen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PropertyTypeButton(
                text: 'House',
                icon: Icons.house,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HouseScreen()),
                  );
                },
              ),
              const SizedBox(height: 20.0),
              PropertyTypeButton(
                text: 'Townhouse',
                icon: Icons.home_work,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TownhouseScreen()),
                  );
                },
              ),
              const SizedBox(height: 20.0),
              PropertyTypeButton(
                text: 'Flat',
                icon: Icons.apartment,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FlatScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PropertyTypeButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const PropertyTypeButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lime,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40.0,
              color: Colors.white,
            ),
            const SizedBox(width: 20.0),
            Text(
              text,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

