import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Picture
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile_picture.jpg'),
              ),
              SizedBox(height: 16),

              // Username
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),

              // Bio
              Text(
                'Travel enthusiast, foodie, and nature lover. '
                'Exploring the world one destination at a time!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 24),

              // Divider
              Divider(thickness: 2),

              // Profile Options (Edit Profile, Saved Trips, Logout)
              ListTile(
                leading: Icon(Icons.edit, color: Colors.green),
                title: Text('Edit Profile'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Add edit profile logic here
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite, color: Colors.red),
                title: Text('Saved Trips'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Add saved trips logic here
                },
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.black),
                title: Text('Logout'),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Add logout logic here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
