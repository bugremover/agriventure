import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class WishlistScreen extends StatelessWidget {
  // Dummy data representing the trips
  final List<Map<String, String>> likedTrips = [
    {
      'title': 'Beachside Paradise',
      'location': 'Bali, Indonesia',
      'image': 'assets/beach.jpg',
    },
    {
      'title': 'Mountain Escape',
      'location': 'Swiss Alps',
      'image': 'assets/mountain.jpg',
    },
    {
      'title': 'City Lights Tour',
      'location': 'New York, USA',
      'image': 'assets/city.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: likedTrips.length,
          itemBuilder: (context, index) {
            final trip = likedTrips[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.symmetric(vertical: 8),
              child: Column(
                children: [
                  // Trip Image
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.asset(
                      trip['image']!,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Trip Details
                  ListTile(
                    title: Text(trip['title']!,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    subtitle: Text(trip['location']!),
                    trailing: IconButton(
                      icon: Icon(Icons.delete_outline, color: Colors.red),
                      onPressed: () {
                        // Add logic here to remove the trip from the wishlist
                        print('Removed ${trip['title']} from wishlist');
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
