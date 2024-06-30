import 'package:flutter/material.dart';

class BidangSeulangaPage extends StatelessWidget {
  final List<Map<String, String>> bidangItems = [
    {'title': 'Cyber Security', 'image': 'assets/cyber_security.png'},
    {'title': 'ioT Hardware', 'image': 'assets/iot_hardware.png'},
    {'title': 'ioT Software', 'image': 'assets/iot_software.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bidang di Seulanga'),
      ),
      body: ListView.builder(
        itemCount: bidangItems.length,
        itemBuilder: (context, index) {
          return Card(   //Card digunakan untuk menampilkan item dalam bentuk kartu yang memberikan tampilan visual yang terstruktur dan memisahkan setiap item .
            margin: EdgeInsets.all(10.0),
            child: Column(  
              children: [
                Image.asset(
                  bidangItems[index]['image']!,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(   // Untuk menampilkan Text judul bidang.
                  bidangItems[index]['title']!,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
