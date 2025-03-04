import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GrammarScreen(),
    );
  }
}

class GrammarScreen extends StatelessWidget {
  final List<Map<String, String>> explanationData = [
    {'image': 'Grammar/Group.jpg', 'title': 'Explanation'},
    {'image': 'Grammar/Group (2).png', 'title': 'Explanation'},
    {'image': 'Grammar/Group.jpg', 'title': 'Explanation'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Grammar', style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: explanationData.length,
          itemBuilder: (context, index) {
            return GrammarCard(
              imagePath: explanationData[index]['image']!,
              title: explanationData[index]['title']!,
            );
          },
        ),
      ),
    );
  }
}

class GrammarCard extends StatelessWidget {
  final String imagePath;
  final String title;

  GrammarCard({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, height: 140, width: 100, fit: BoxFit.cover),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Icon(Icons.settings, color: Colors.green, size: 30),
          ],
        ),
      ),
    );
  }
}
