import 'package:flutter/material.dart';

class HouseScreen extends StatefulWidget {
  const HouseScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HouseScreenState createState() => _HouseScreenState();
}

class _HouseScreenState extends State<HouseScreen> {
  bool isForSale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('House Details'),
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
                itemCount: houseList.length,
                itemBuilder: (context, index) {
                  if (houseList[index].isForSale == isForSale) {
                    return HouseCard(house: houseList[index]);
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

class HouseCard extends StatelessWidget {
  final House house;

  const HouseCard({super.key, required this.house});

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
              house.imagePath,
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
                  'House ID: ${house.id}',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  house.location,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  house.isForSale
                      ? 'Price: \$${house.price}'
                      : 'Rent: \$${house.price}/month',
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

class House {
  final String id;
  final String imagePath;
  final String location;
  final double price;
  final bool isForSale;

  House({
    required this.id,
    required this.imagePath,
    required this.location,
    required this.price,
    required this.isForSale,
  });
}

// Sample data
List<House> houseList = [
  House(
    id: 'H001',
    imagePath: 'assets/images/house1.jpeg',
    location: '123 Main Street, Springfield',
    price: 250000,
    isForSale: true,
  ),
  House(
    id: 'H002',
    imagePath: 'assets/images/house2.jpg',
    location: '456 Elm Street, Shelbyville',
    price: 1500,
    isForSale: false,
  ),
  House(
    id: 'H003',
    imagePath: 'assets/images/house3.jpg',
    location: '789 Oak Street, Capital City',
    price: 300000,
    isForSale: true,
  ),
  House(
    id: 'H004',
    imagePath: 'assets/images/house4.jpg',
    location: '101 Maple Street, Ogdenville',
    price: 1800,
    isForSale: false,
  ),
];


