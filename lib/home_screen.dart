import 'package:flutter/material.dart';
import 'callcenter_screen.dart';
import 'general_inquiry_screen.dart';
import 'apply_screen.dart';
import 'statement_screen.dart';
import 'pay_screen.dart';
// Import the ProductScreen
import 'product_screen.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/content.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Welcome to BHC App',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              // Handle search functionality here
                            },
                          ),
                          hintText: 'Search',
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 15.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Wrap(
                spacing: 12.0, // Adjusted spacing
                runSpacing: 12.0, // Adjusted spacing
                alignment: WrapAlignment.center,
                children: <Widget>[
                  MediumSquareButton(
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const StatementScreen()),
                      );
                    },
                    color: Colors.lime,
                    text: 'Statements',
                    icon: Icons.description,
                  ),
                  MediumSquareButton(
                    onPressed: () { 
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PayScreen()),
                      );
                    },
                    color: Colors.lime,
                    text: 'Pay',
                    icon: Icons.payment,
                  ),
                  MediumSquareButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const CallCenterScreen()),
                      );
                    },
                    color: Colors.lime,
                    text: 'Call Center',
                    icon: Icons.call,
                  ),
                  MediumSquareButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const GeneralInquiryScreen()),
                      );
                    },
                    color: Colors.lime,
                    text: 'General Inquiries',
                    icon: Icons.help,
                  ),
                  MediumSquareButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProductScreen()),
                      );
                    },
                    color: Colors.lime,
                    text: 'Products',
                    icon: Icons.shopping_cart,
                  ),
                  MediumSquareButton(
                    onPressed: () {
                      // Handle View Balance button functionality here
                    },
                    color: Colors.lime,
                    text: 'Balance',
                    icon: Icons.account_balance_wallet,
                  ),
                  MediumSquareButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ApplyScreen()),
                      );
                    },
                    color: Colors.lime,
                    text: 'Apply',
                    icon: Icons.assignment,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 208, 37, 3), // Footer color
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Handle Home button functionality here
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
      width: 88.0, // Adjusted the size to fit well
      height: 88.0,
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
              size: 30.0,
              color: Colors.white,
            ),
            const SizedBox(height: 7.0),
            Text(
              text,
              style: const TextStyle(fontSize: 10.0, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}


















