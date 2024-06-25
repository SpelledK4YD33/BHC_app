import 'package:flutter/material.dart';


class ApplyScreen extends StatelessWidget {
  const ApplyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apply'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'APPLY',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/houseforrent');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lime,
              ),
              child: const Text('House for Rent'),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/houseForSale');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lime,
              ),
              child: const Text('House for Sale'),
            ),
          ],
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
