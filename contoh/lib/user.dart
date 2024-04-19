import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PgeHistory(),
    );
  }
}

class PgeHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Simulated list of employees
    List<Karyawan> karyawanList = [
      Karyawan(
        id: 1,
        nama: "Setiawan Budi",
        alamat: "Jl. Hiri Raya No. 10",
        devisi: "Pemrograman",
      ),
      Karyawan(
        id: 2,
        nama: "Anisa Rahmawati",
        alamat: "Jl. Krakatau No. 08",
        devisi: "Data Analyst",
      ),
      // Add more employees as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Karyawan'),
      ),
      body: ListView.builder(
        itemCount: karyawanList.length,
        itemBuilder: (context, index) {
          var karyawan = karyawanList[index];
          return ListTile(
            title: Text(karyawan.nama),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HistoryCuti(id: karyawan.id!),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Karyawan {
  final int? id;
  final String nama;
  final String alamat;
  final String devisi;

  Karyawan({
    this.id,
    required this.nama,
    required this.alamat,
    required this.devisi,
  });
}

class HistoryCuti extends StatelessWidget {
  final int id;

  const HistoryCuti({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Di sini Anda dapat mengambil data cuti berdasarkan ID yang diberikan
    // Misalnya, Anda dapat memanggil API atau mengakses basis data untuk mendapatkan riwayat cuti karyawan tertentu
    // Untuk demonstrasi, kita hanya akan menampilkan ID karyawan
    return Scaffold(
      appBar: AppBar(
        title: Text('History Cuti'),
      ),
      body: Center(
        child: Text('Cuti history for ID: $id'),
      ),
    );
  }
}
