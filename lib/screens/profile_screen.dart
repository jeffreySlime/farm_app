import 'package:flutter/material.dart';
import '../widgets/user_Profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mock user data
    final String userName = 'John Doe';
    final String userEmail = 'johndoe@example.com';

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            UserProfileWidget(
              name: userName,
              email: userEmail,
              onEdit: () {
                // Navigate to profile editing screen or show edit form
                print('Edit profile clicked!');
                // You can add navigation here to a profile editing screen
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Log out the user (just pop from navigation stack for demo)
                Navigator.pop(context);
              },
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
