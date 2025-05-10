import 'package:flutter/material.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('✨ TabBar Example'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.star), text: 'Favorites'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
            ],
            indicatorColor: Colors.amber,
            labelColor: Colors.amber,
            unselectedLabelColor: Colors.white,
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('🏡 Home Tab', style: TextStyle(fontSize: 22))),
            Center(child: Text('⭐ Favorites Tab', style: TextStyle(fontSize: 22))),
            Center(child: Text('⚙️ Settings Tab', style: TextStyle(fontSize: 22))),
          ],
        ),
      ),
    );
  }
}
