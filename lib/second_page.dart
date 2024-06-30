import 'package:flutter/material.dart';
import 'apa_itu_seulanga.dart';
import 'bidang_seulanga.dart';
import 'prestasi.dart';

class SecondPage extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {'title': 'Apa itu Seulanga', 'page': ApaItuSeulangaPage()},
    {'title': 'Bidang di Seulanga', 'page': BidangSeulangaPage()},
    {'title': 'Prestasi', 'page': PrestasiPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(   //Untuk membangun daftar menu
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Card(  //untuk menampilkan masing-masing menu sebagai ListTile dengan judul yang dapat ditekan.
            child: ListTile(
              title: Text(menuItems[index]['title']),
              onTap: () {
                Navigator.push(  // untuk menavigasi antar halaman ketika salah satu ditekan
                  context,
                  MaterialPageRoute(builder: (context) => menuItems[index]['page']),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
