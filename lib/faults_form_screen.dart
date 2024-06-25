import 'package:flutter/material.dart';
import 'confirmation_screen.dart';  // Add this import

class FaultsFormScreen extends StatefulWidget {
  const FaultsFormScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FaultsFormScreenState createState() => _FaultsFormScreenState();
}

class _FaultsFormScreenState extends State<FaultsFormScreen> {
  final TextEditingController _plotNumberController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String _selectedFaultCategory = 'Electricity';
  String _selectedFaultType = 'Electricity tripping';

  final Map<String, List<String>> _faultTypes = {
    'Electricity': [
      'Electricity tripping',
      'No power',
      'Electric shock',
      'Burnt socket',
      'Broken socket',
      'Loose socket',
      'Faulty cooker control',
      'Torn/Loose Sprague tubing',
      'Flickering florescent tube',
      'Broken lamp shade',
      'Loose light fitting',
      'Security light fitting - not working',
      'Bulb stub stuck in holder',
      'Burnt/Broken lamp holder',
      'Staircase lights faulty',
      'Leakage',
      'Water too hot',
      'Not heating',
      'Switch not working',
      'Tripping electricity',
    ],
    'Carpentry': [
      'Garage',
      'Windows & frames',
      'Doors & frames',
      'Kitchen',
      'Bath',
      'Ceiling',
      'Roof',
      'Welding',
      'Glazing',
      'Painting',
    ],
    'Plumbing': [
      'Shower',
      'Gutters',
      'Wash trough',
      'Kitchen sink',
      'Wash basin',
      'Bathtub',
      'Toilet',
      'Geyser leak',
      'Pipes',
      'Gully',
    ],
    'Masonry': [
      'Walls',
      'Floors',
    ],
    'External': [
      'Fence',
      'Sewage system',
      'Water supply',
      'Paving',
      'Water drainage',
    ],
    'Mechanical': [
      'Air conditioners',
      'Generators',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faults Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'FAULTS FORM',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: _plotNumberController,
                decoration: const InputDecoration(
                  labelText: 'Plot Number',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              DropdownButtonFormField<String>(
                value: _selectedFaultCategory,
                decoration: const InputDecoration(
                  labelText: 'Fault Category',
                  border: OutlineInputBorder(),
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedFaultCategory = newValue!;
                    _selectedFaultType = _faultTypes[_selectedFaultCategory]![0];
                  });
                },
                items: _faultTypes.keys.map((category) {
                  return DropdownMenuItem<String>(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20.0),
              DropdownButtonFormField<String>(
                value: _selectedFaultType,
                decoration: const InputDecoration(
                  labelText: 'Fault Type',
                  border: OutlineInputBorder(),
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedFaultType = newValue!;
                  });
                },
                items: _faultTypes[_selectedFaultCategory]!.map((faultType) {
                  return DropdownMenuItem<String>(
                    value: faultType,
                    child: Text(faultType),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20.0),
              TextField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Fault Description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Handle form submission here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConfirmationScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lime,
                ),
                child: const Text('Submit'),
              ),
            ],
          ),
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
