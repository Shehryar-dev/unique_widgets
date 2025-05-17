import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🏠 Home with Drawer'),backgroundColor: Colors.indigo.shade900,),
      drawer: const AppDrawer(),
      body: const Center(child: Text('Welcome to Home Page')),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Shehryar Saleem'),
            accountEmail: const Text('shehryar@gmail.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            decoration:  BoxDecoration(color: Colors.indigo.shade900),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {},
          ),
          const Spacer(),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Logging out...')),
              );
            },
          ),
          const SizedBox(height: 12),
          const Text('v1.0.0', style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
