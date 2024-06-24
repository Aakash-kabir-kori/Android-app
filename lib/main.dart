import 'package:flutter/material.dart';
import 'second.dart';
import 'setting.dart';
import 'logout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Page',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  SecondPage()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/logo.jpg'),
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                'Abhishek Kumar',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Active since - June. 2024',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 24),
            ProfileSection(
              title: 'Personal Information',
              icon: Icons.edit,
              children: <Widget>[
                InfoRow(icon: Icons.email, text: 'abhishek24@gmail.com', onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SecondPage()),
                  );
                }),
                InfoRow(icon: Icons.phone, text: '9898712132', onPressed: () {}),
                InfoRow(icon: Icons.web, text: 'www.bgmiscrims.com', onPressed: () {}),
                InfoRow(icon: Icons.location_on, text: 'Antigua', onPressed: () {}),
              ],
            ),
            const SizedBox(height: 24),
            ProfileSection(
              title: 'Utilities',
              children: <Widget>[
                InfoRow(icon: Icons.download, text: 'Downloads', onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SettingsPage()), // Replace with appropriate page
                  );
                }),
                InfoRow(icon: Icons.analytics, text: 'Usage Analytics', onPressed: () {}),
                InfoRow(icon: Icons.help, text: 'Ask Help-Desk', onPressed: () {}),
                InfoRow(icon: Icons.logout, text: 'Log-Out', onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  LogoutPage()),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final String title;
  final IconData? icon;
  final List<Widget> children;

  const ProfileSection({super.key, required this.title, this.icon, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (icon != null)
                Icon(
                  icon,
                  color: Colors.blue,
                ),
            ],
          ),
          const SizedBox(height: 8),
          ...children,
        ],
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const InfoRow({super.key, required this.icon, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.blue,
            ),
            const SizedBox(width: 16),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
