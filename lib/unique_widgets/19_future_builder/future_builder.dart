import 'package:flutter/material.dart';

class FutureBuilderExample extends StatelessWidget {
  const FutureBuilderExample({super.key});

  Future<String> fetchUserData() async {
    await Future.delayed(const Duration(seconds: 3));
    return '👤 Shehryar Saleem – Flutter Developer';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FutureBuilder Example"), backgroundColor: Colors.indigo.shade900,),
      body: Center(
        child: FutureBuilder<String>(
          future: fetchUserData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return const Text("❌ Error loading data");
            } else if (snapshot.hasData) {
              return Card(
                elevation: 4,
                margin: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    snapshot.data!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              );
            } else {
              return const Text("No data found");
            }
          },
        ),
      ),
    );
  }
}
