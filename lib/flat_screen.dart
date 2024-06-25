import 'package:flutter/material.dart';

class FlatScreen extends StatefulWidget {
  const FlatScreen({super.key});

  @override
  _FlatScreenState createState() => _FlatScreenState();
}

class _FlatScreenState extends State<FlatScreen> {
  bool isForSale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flat Details'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isForSale = true;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isForSale ? Colors.blue : Colors.grey,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text('For Sale'),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isForSale = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: !isForSale ? Colors.blue : Colors.grey,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text('For Rent'),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: flatList.length,
                itemBuilder: (context, index) {
                  if (flatList[index].isForSale == isForSale) {
                    return FlatCard(flat: flatList[index]);
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FlatCard extends StatelessWidget {
  final Flat flat;

  const FlatCard({super.key, required this.flat});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: Image.asset(
              flat.imagePath,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Flat ID: ${flat.id}',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  flat.location,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  flat.isForSale
                      ? 'Price: \$${flat.price}'
                      : 'Rent: \$${flat.price}/month',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Flat {
  final String id;
  final String imagePath;
  final String location;
  final double price;
  final bool isForSale;

  Flat({
    required this.id,
    required this.imagePath,
    required this.location,
    required this.price,
    required this.isForSale,
  });
}

// Sample data
List<Flat> flatList = [
  Flat(
    id: 'F001',
    imagePath: 'assets/images/flat1.jpg',
    location: '456 Birch Street, Springfield',
    price: 250000,
    isForSale: true,
  ),
  Flat(
    id: 'F002',
    imagePath: 'assets/images/flat2.jpg',
    location: '789 Cedar Street, Shelbyville',
    price: 1500,
    isForSale: false,
  ),
  Flat(
    id: 'F003',
    imagePath: 'assets/images/flat3.jpg',
    location: '321 Oak Street, Capital City',
    price: 300000,
    isForSale: true,
  ),
  Flat(
    id: 'F004',
    imagePath: 'assets/images/flat4.jpg',
    location: '654 Pine Street, Ogdenville',
    price: 2000,
    isForSale: false,
  ),
];
