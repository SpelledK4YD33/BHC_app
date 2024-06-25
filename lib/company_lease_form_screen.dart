import 'package:flutter/material.dart';

class CompanyLeaseFormScreen extends StatelessWidget {
  const CompanyLeaseFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lease Application Form (Company)'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Applicant\'s Particulars', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name of Company'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Registration Number'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Postal Address'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Physical Address'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Telephone'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Fax'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Cellphone 1'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Cellphone 2'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'E-mail Address'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Contact Person'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Position'),
              ),
              const SizedBox(height: 20),
              const Text('Name of Directors', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name 1'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name 2'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Residence'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Postal Address'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Telephone'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Cellphone'),
              ),
              const SizedBox(height: 20),
              const Text('Name of Major Shareholders', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name 1'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name 2'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Residence'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Postal Address'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Telephone'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Cellphone'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Number of Shares'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Source of funds for the company to rent the property(ies)'),
              ),
              const SizedBox(height: 20),
              const Text('Preferred house type by priority', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              for (var i = 1; i <= 5; i++)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('House type $i'),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(labelText: 'Preference 1'),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(labelText: 'Preference 2'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Representative\'s Name'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Representative\'s Signature'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Date (DD/MM/YYYY)'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle form submission
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
