import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.grey[900],
      ),
      body: ListView(
        children: [
          SettingsSection(
            title: 'Network & Internet',
            settings: [
              SettingItem(
                icon: Icons.wifi,
                title: 'Wi-Fi',
                subtitle: 'Connected to Home Network',
                onTap: () {},
              ),
              SettingItem(
                icon: Icons.network_cell,
                title: 'Mobile Network',
                subtitle: 'Vodafone',
                onTap: () {},
              ),
              SettingItem(
                icon: Icons.horizontal_split_outlined,
                title: 'Hotspot & Tethering',
                onTap: () {},
              ),
            ],
          ),
          SettingsSection(
            title: 'Connected Devices',
            settings: [
              SettingItem(
                icon: Icons.bluetooth,
                title: 'Bluetooth',
                subtitle: 'On',
                onTap: () {},
              ),
              SettingItem(
                icon: Icons.usb,
                title: 'USB',
                onTap: () {},
              ),
            ],
          ),
          SettingsSection(
            title: 'Apps & Notifications',
            settings: [
              SettingItem(
                icon: Icons.notifications,
                title: 'Notifications',
                onTap: () {},
              ),
              SettingItem(
                icon: Icons.apps,
                title: 'Apps',
                onTap: () {},
              ),
            ],
          ),
          SettingsSection(
            title: 'Battery',
            settings: [
              SettingItem(
                icon: Icons.battery_full,
                title: 'Battery Saver',
                subtitle: 'Off',
                onTap: () {},
              ),
              SettingItem(
                icon: Icons.battery_alert,
                title: 'Battery Usage',
                onTap: () {},
              ),
            ],
          ),
          SettingsSection(
            title: 'Display',
            settings: [
              SettingItem(
                icon: Icons.brightness_6,
                title: 'Brightness',
                subtitle: 'Auto',
                onTap: () {},
              ),
              SettingItem(
                icon: Icons.screen_rotation,
                title: 'Screen Rotation',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
  final String title;
  final List<SettingItem> settings;

  const SettingsSection({super.key, required this.title, required this.settings});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          ...settings,
          const Divider(),
        ],
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  const SettingItem({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      onTap: onTap,
    );
  }
}
