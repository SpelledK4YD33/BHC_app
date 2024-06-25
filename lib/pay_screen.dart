// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PayScreen extends StatefulWidget {
  const PayScreen({super.key});

  @override
  _PayScreenState createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _amountController = TextEditingController();

  Future<void> _processPayment() async {
    if (_formKey.currentState?.validate() ?? false) {
      final String email = _emailController.text;
      final String amount = _amountController.text;

      // Construct the payment request data
      final Map<String, dynamic> paymentData = {
        'email': email,
        'amount': amount,
      };

      // Send the data to the backend
      final http.Response response = await http.post(
        Uri.parse('https://your-backend-endpoint.com/pay'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(paymentData),
      );

      // Handle the backend response
      if (response.statusCode == 200) {
        // Payment successful
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Payment successful')),
        );
      } else {
        // Payment failed
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Payment failed')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pay'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _amountController,
                decoration: const InputDecoration(
                  labelText: 'Amount',
                  hintText: 'Enter amount to pay',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an amount';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: _processPayment,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: const Text('Submit Payment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
