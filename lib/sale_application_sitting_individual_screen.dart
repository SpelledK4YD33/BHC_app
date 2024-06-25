import 'package:flutter/material.dart';

class SaleApplicationSittingIndividualScreen extends StatelessWidget {
  const SaleApplicationSittingIndividualScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sale Application - Sitting Tenant (Individual)'),
      ),
      body: const Center(
        child: Text('Sale Application Form for Sitting Tenant (Individual)'),
      ),
    );
  }
}
