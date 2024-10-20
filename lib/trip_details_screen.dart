import 'package:agriventure/booking_screen.dart';
import 'package:flutter/material.dart';

class TripDetailsScreen extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String location;
  final String description;

  TripDetailsScreen({
    required this.imageUrl,
    required this.name,
    required this.location,
    required this.description,
  });

  @override
  _TripDetailsScreenState createState() => _TripDetailsScreenState();
}

class _TripDetailsScreenState extends State<TripDetailsScreen> {
  bool isWished = false; // State to manage wishlist status

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              widget.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    widget.location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isWished = !isWished; // Toggle wishlist state
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              isWished ? Icons.favorite : Icons.favorite_border,
                              color: isWished ? Colors.red : Colors.black,
                            ),
                            SizedBox(width: 4),
                            Text(isWished
                                ? 'Remove from Wishlist'
                                : 'Add to Wishlist'),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BookingScreen(),
                            ),
                          );
                        },
                        child: Text('Book Now'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
