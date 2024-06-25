import 'package:flutter/material.dart';

class IndividualLeaseFormScreen extends StatelessWidget {
  const IndividualLeaseFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lease Application Form (Individual)'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Preferred house type by priority', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'House type 1'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'House type 2'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text('Applicant\'s Particulars', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Surname'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Forename'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Other Names Title'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Maiden Name'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nationality'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Marital Status'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Omang/ID or Passport Number'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Date of Birth DD MM YYYY'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Place of Birth'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Postal Address'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Physical Address'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Telephone Work'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Home'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Cellphone'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Fax'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'E-mail Address'),
              ),
              const SizedBox(height: 20),
              const Text('Employment Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Employer\'s Name'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Work Station/Branch Location'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Employer\'s Address'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Occupation'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Telephone S/board'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Fax'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Source of funds to rent the property'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name of previous employer in the past 5 years'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Position'),
              ),
              const SizedBox(height: 20),
              const Text('Spouse\'s Particulars', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Surname'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Forename'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Other Names'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Maiden Name'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Nationality'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Omang/ID or Passport Number'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Date of Birth DD MM YYYY'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Place of Birth'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Telephone'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Cellphone'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'E-mail Address'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Employer\'s Name'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Work Station/Branch'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Employer\'s Address'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Telephone S/board'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Fax'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name of previous employer in the past 5 years'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Position'),
              ),
              const SizedBox(height: 20),
              const Text('Applicant Home Village/Town Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Village/Town Name'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Ward'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'District'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Chief/Headman\'s Name'),
              ),
              const SizedBox(height: 20),
              const Text('Dependants', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              for (var i = 1; i <= 4; i++)
                Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Name $i'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Relationship $i (Indicate if Major/Minor)'),
                    ),
                    const SizedBox(height: 10),
                  ],
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
