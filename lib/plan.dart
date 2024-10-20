import 'package:flutter/material.dart';

class PlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking UI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(
                    image: AssetImage('assets/property.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Title and Location
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '3785 Kemayoran Res..',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.location_on, color: Colors.green),
                  Text('Belokan kiri sebelum stasiun'),
                ],
              ),
              SizedBox(height: 8),

              // Review Stars and Check Reviews
              Row(
                children: [
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(Icons.star, color: Colors.green, size: 16);
                    }),
                  ),
                  SizedBox(width: 8),
                  Text('Lihat review lainnya'),
                ],
              ),
              SizedBox(height: 16),

              // Description
              Text(
                'Tentang',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'The paid guest in the village room might feel either comfort '
                'and coziness if the accommodations are well-maintained, or '
                'discomfort and isolation if the room lacks cleanliness or '
                'amenities and is situated away from the village community.',
              ),
              SizedBox(height: 16),

              // Book Now Button
              ElevatedButton(
                onPressed: () {
                  // Action for booking
                },
                child: Text('Book Now'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 16),

              // Icons for Share and Favorite
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.share, color: Colors.grey),
                    onPressed: () {
                      // Action for sharing
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border, color: Colors.grey),
                    onPressed: () {
                      // Action for favorite
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
