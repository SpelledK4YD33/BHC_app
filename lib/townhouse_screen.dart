import 'package:flutter/material.dart';

class TownhouseScreen extends StatefulWidget {
  const TownhouseScreen({super.key});

  @override
  _TownhouseScreenState createState() => _TownhouseScreenState();
}

class _TownhouseScreenState extends State<TownhouseScreen> {
  bool isForSale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Townhouse Details'),
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
                itemCount: townhouseList.length,
                itemBuilder: (context, index) {
                  if (townhouseList[index].isForSale == isForSale) {
                    return TownhouseCard(townhouse: townhouseList[index]);
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

class TownhouseCard extends StatelessWidget {
  final Townhouse townhouse;

  const TownhouseCard({super.key, required this.townhouse});

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
              townhouse.imagePath,
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
                  'Townhouse ID: ${townhouse.id}',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  townhouse.location,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  townhouse.isForSale
                      ? 'Price: \$${townhouse.price}'
                      : 'Rent: \$${townhouse.price}/month',
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

class Townhouse {
  final String id;
  final String imagePath;
  final String location;
  final double price;
  final bool isForSale;

  Townhouse({
    required this.id,
    required this.imagePath,
    required this.location,
    required this.price,
    required this.isForSale,
  });
}

// Sample data
List<Townhouse> townhouseList = [
  Townhouse(
    id: 'T001',
    imagePath: 'assets/images/townhouse1.jpg',
    location: '321 Maple Street, Springfield',
    price: 350000,
    isForSale: true,
  ),
  Townhouse(
    id: 'T002',
    imagePath: 'assets/images/townhouse2.jpg',
    location: '654 Oak Street, Shelbyville',
    price: 2500,
    isForSale: false,
  ),
  Townhouse(
    id: 'T003',
    imagePath: 'assets/images/townhouse3.jpg',
    location: '987 Pine Street, Capital City',
    price: 400000,
    isForSale: true,
  ),
  Townhouse(
    id: 'T004',
    imagePath: 'assets/images/townhouse4.jpg',
    location: '121 Elm Street, Ogdenville',
    price: 3000,
    isForSale: false,
  ),
];
