import 'package:flutter/material.dart';
import 'second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  // untuk menyediakan struktur dasar halaman
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(  // Menampilkan logo seulanga dari asset yang dimasukkan.
              'assets/logo.png',
              width: 400,
              height: 250,
            ),
            SizedBox(height: 10),
            Text(
              'Homepage',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(   // Tombol yang menavigasi ke halaman berikutnya ketika ditekan
              onPressed: () {
                Navigator.push(  //untuk menavigasi antar halaman ketika ditekan
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Text('Lanjutkan'),
            ),
          ],
        ),
      ),
    );
  }
}
