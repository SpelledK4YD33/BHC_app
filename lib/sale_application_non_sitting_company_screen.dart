import 'package:flutter/material.dart';

class SaleApplicationNonSittingCompanyScreen extends StatelessWidget {
  const SaleApplicationNonSittingCompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sale Application - Non-sitting Tenant (Company)'),
      ),
      body: const Center(
        child: Text('Sale Application Form for Non-sitting Tenant (Company)'),
      ),
    );
  }
}
