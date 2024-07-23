import 'package:flutter/material.dart';
import 'package:listview_gridview_example/screens/dynamic/photo_grid.dart';
import 'package:listview_gridview_example/screens/dynamic/photo_list.dart';
import 'package:listview_gridview_example/screens/static/gridview_screen.dart';
import 'package:listview_gridview_example/screens/static/listview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ListView & GridView Example',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ListViewScreen()),
                );
              },
              child: const Text('Go to ListView'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GridViewScreen()),
                );
              },
              child: const Text('Go to GridView'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PhotoList(),
                  ),
                );
              },
              child: const Text('Go to PhotoList'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PhotoGrid(),
                  ),
                );
              },
              child: const Text('Go to PhotoGrid'),
            ),
          ],
        ),
      ),
    );
  }
}
