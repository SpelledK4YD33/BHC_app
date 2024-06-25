import 'package:flutter/material.dart';

class SaleApplicationSittingCompanyScreen extends StatelessWidget {
  const SaleApplicationSittingCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sale Application - Sitting Tenant (Company)'),
      ),
      body: const Center(
        child: Text('Sale Application Form for Sitting Tenant (Company)'),
      ),
    );
  }
}
