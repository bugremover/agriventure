import 'package:flutter/material.dart';
import 'trip_details_screen.dart'; // Import your TripDetailsScreen
import 'booking_screen.dart'; // Import your BookingScreen

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define the color palette
    final Color primaryGreen = Color(0xFF4CAF50);
    final Color lightBackground = Colors.grey[200]!;
    final Color darkTextColor = Colors.black;
    final Color whiteColor = Colors.white;

    return Scaffold(
      backgroundColor: lightBackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              decoration: BoxDecoration(
                color: primaryGreen,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // User Greeting and Profile Picture
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'User1234',
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Welcome to Agriventure',
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                            'assets/munnar.jpg'), // Change to your local profile image path
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for beautiful locations',
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Popular Trip Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Trip',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: darkTextColor),
                  ),
                  Text(
                    'Explore >',
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryGreen,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Horizontal List for Popular Trips
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5, // Replace with the actual number of trips
                itemBuilder: (context, index) {
                  String imageUrl =
                      'assets/munnar.jpg'; // Example local image path
                  String tripName = 'Munnar';
                  String location = 'Kerala';

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TripDetailsScreen(
                            imageUrl: imageUrl,
                            name: tripName,
                            location: location,
                            description: 'Beautiful hills and tea plantations.',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 160,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                            child: Image.asset(
                              imageUrl,
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tripName,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: darkTextColor,
                                  ),
                                ),
                                Text(
                                  location,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: List.generate(
                                    5,
                                    (starIndex) => Icon(
                                      Icons.star,
                                      size: 16,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            // Plan Your Next Trip Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Plan your next trip!',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: darkTextColor),
              ),
            ),
            SizedBox(height: 10),
            // Vertically Scrollable Postcards
            Container(
              height: 400, // Set height for the scrollable area
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 3, // Number of postcards
                itemBuilder: (context, index) {
                  String postcardImageUrl =
                      // 'assets/postcard${index + 1}.jpg';
                      // // Use local asset images
                      'assets/munnar.jpg';
                  String postcardName = 'Bali';
                  String postcardLocation = 'Indonesia';

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TripDetailsScreen(
                            imageUrl: postcardImageUrl,
                            name: postcardName,
                            location: postcardLocation,
                            description:
                                'Visit the beautiful beaches and resorts.',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 250, // Adjust height for the rectangular shape
                      margin: EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                            child: Image.asset(
                              postcardImageUrl,
                              height: 180,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  postcardName,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: darkTextColor,
                                  ),
                                ),
                                Text(
                                  postcardLocation,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            // A Sample Large Image for Next Trip
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TripDetailsScreen(
                          imageUrl:
                              'assets/large_trip_image.jpg', // Example local image for next trip
                          name: 'Next Trip to Bali',
                          location: 'Bali, Indonesia',
                          description:
                              'Explore the beautiful beaches and rich culture of Bali, Indonesia.',
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/munnar.jpg',
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// Dummy Profile Page for Navigation

// Dummy Profile Page for Navigation
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: Center(child: Text('Welcome to the Profile Page')),
    );
  }
}
