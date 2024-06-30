import 'package:flutter/material.dart';

class PrestasiPage extends StatelessWidget {
  final List<Map<String, String>> prestasiItems = [  //digunakan untuk menyimpan daftar prestasi dalam bentuk List yang berisi Map yang memiliki 2 atribut
    {'image': 'assets/prestasi1.png', 'description': 'Juara 1 Lomba Inovasi Mahasiswa Tingkat Nasional dalam Kategori Energi dan Rekayasa Keteknikan. Universitas Tidar'},
    {'image': 'assets/prestasi2.png', 'description': 'Gold Medalist Cabang IoT in Agriculture\ndalam ajang 2nd Indonesia Internasional IoT Olympiad (130) 2023'},
    {'image': 'assets/prestasi3.png', 'description': 'Gold Medalist Cabang IoT in Agriculture\ndalam ajang 2nd Indonesia Internasional IoT Olympiad (130) 2023'},
    {'image': 'assets/prestasi4.png', 'description': 'Gold Medalist pada ajang 2nd Indonesia Internasional IOT Olympiad (I30) 2023'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prestasi'),
      ),
      body: ListView.builder(
        itemCount: prestasiItems.length,
        itemBuilder: (context, index) {
          return Card(  //Card digunakan untuk menampilkan item dalam bentuk kartu yang memberikan tampilan visual yang terstruktur dan memisahkan setiap item .
            margin: EdgeInsets.all(10.0), //untuk menentukan jarak antara setiap kartu dengan tepi layar atau kartu lainnya.
            child: Column(
              children: [
                Image.asset(
                  prestasiItems[index]['image']!,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10), //untuk memberi jarak antara gambar dan teks deskripsi.
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    prestasiItems[index]['description']!,
                    style: TextStyle(
                      fontSize: 16,
                    ),
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
