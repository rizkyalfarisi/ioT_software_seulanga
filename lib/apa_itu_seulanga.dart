import 'package:flutter/material.dart';

class ApaItuSeulangaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apa itu Seulanga'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(   //untuk menampilkan teks penjelasan mengenai "Seulanga".
          'Seulanga merupakan sebuah komunitas mahasiswa yang menerapkan proses pembelajaran Project Based Learning (PBL) untuk membentuk dan menempa mahasiswa/i sehingga mampu menjawab tantangan publik.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
