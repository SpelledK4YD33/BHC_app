import 'package:flutter/material.dart';

class SaleApplicationNonSittingIndividualScreen extends StatelessWidget {
  const SaleApplicationNonSittingIndividualScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sale Application - Non-sitting Tenant (Individual)'),
      ),
      body: const Center(
        child: Text('Sale Application Form for Non-sitting Tenant (Individual)'),
      ),
    );
  }
}
