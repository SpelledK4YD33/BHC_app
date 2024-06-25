import 'package:flutter/material.dart';

class HouseForSaleScreen extends StatelessWidget {
  const HouseForSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('House for Sale'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Select Application Form',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              alignment: WrapAlignment.center,
              children: <Widget>[
                MediumSquareButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/saleApplicationNonSittingIndividual');
                  },
                  color: Colors.blue,
                  text: 'Non-sitting Tenant\n(Individual)',
                  icon: Icons.person,
                ),
                MediumSquareButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/saleApplicationNonSittingCompany');
                  },
                  color: Colors.blue,
                  text: 'Non-sitting Tenant\n(Company)',
                  icon: Icons.business,
                ),
                MediumSquareButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/saleApplicationSittingIndividual');
                  },
                  color: Colors.blue,
                  text: 'Sitting Tenant\n(Individual)',
                  icon: Icons.home,
                ),
                MediumSquareButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/saleApplicationSittingCompany');
                  },
                  color: Colors.blue,
                  text: 'Sitting Tenant\n(Company)',
                  icon: Icons.apartment,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MediumSquareButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final String text;
  final IconData icon;

  const MediumSquareButton({super.key, 
    required this.onPressed,
    required this.color,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.0,
      height: 150.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40.0,
              color: Colors.white,
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(fontSize: 14.0, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
