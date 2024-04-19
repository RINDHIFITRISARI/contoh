import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cuti History',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HistoryCuti(),
    );
  }
}

class Karyawan {
  final String nama;
  final String alamat;
  final String devisi;
  final int sisaCutiTahunan;

  Karyawan({
    required this.nama,
    required this.alamat,
    required this.devisi,
    required this.sisaCutiTahunan,
  });
}

class CutiHistory {
  final String nama;
  final String alamat;
  final String devisi;
  final int sisaCutiTahunan;
  final DateTime tanggalMulai;
  final DateTime tanggalSelesai;
  final String keterangan;
  final String fileName;

  CutiHistory({
    required this.nama,
    required this.alamat,
    required this.devisi,
    required this.sisaCutiTahunan,
    required this.tanggalMulai,
    required this.tanggalSelesai,
    required this.keterangan,
    required this.fileName,
  });
}

class HistoryCuti extends StatelessWidget {
  const HistoryCuti({Key? key, int? id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('History Cuti')),
      body: ListView.builder(
        itemCount: cutiHistoryList.length,
        itemBuilder: (context, index) {
          var history = cutiHistoryList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CutiDetail(history: history),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              elevation: 3,
              child: ListTile(
                title: Text(history.nama),
                subtitle: Text(
                    '${history.tanggalMulai.day}-${history.tanggalMulai.month}-${history.tanggalMulai.year} to ${history.tanggalSelesai.day}-${history.tanggalSelesai.month}-${history.tanggalSelesai.year}'),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CutiDetail extends StatelessWidget {
  final CutiHistory history;

  const CutiDetail({Key? key, required this.history}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Cuti'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama: ${history.nama}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text("Alamat: ${history.alamat} | Devisi: ${history.devisi}"),
            SizedBox(height: 16),
            Text(
              "Tanggal Mulai: ${history.tanggalMulai.day}-${history.tanggalMulai.month}-${history.tanggalMulai.year}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Tanggal Selesai: ${history.tanggalSelesai.day}-${history.tanggalSelesai.month}-${history.tanggalSelesai.year}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text("Keterangan: ${history.keterangan}"),
            SizedBox(height: 8),
            Text("File yang diunggah: ${history.fileName}"),
          ],
        ),
      ),
    );
  }
}

List<CutiHistory> cutiHistoryList = [
  CutiHistory(
    nama: "Setiawan Budi",
    alamat: "Jl. Hiri Raya No. 10",
    devisi: "Pemrograman",
    sisaCutiTahunan: 10,
    tanggalMulai: DateTime(2024, 2, 1),
    tanggalSelesai: DateTime(2024, 2, 5),
    keterangan: "Cuti tahunan pertama",
    fileName: "cuti_pertama.jpg",
  ),
  CutiHistory(
    nama: "Anisa Rahmawati",
    alamat: "Jl. Krakatau No. 08",
    devisi: "Data Analyst",
    sisaCutiTahunan: 5,
    tanggalMulai: DateTime(2024, 3, 2),
    tanggalSelesai: DateTime(2024, 3, 6),
    keterangan: "Cuti tahunan pertama",
    fileName: "cuti_pertama.jpg",
  ),
  CutiHistory(
    nama: "Rizky Pratama",
    alamat: "Jl. Plewan No. 12",
    devisi: "UX/UI Designer",
    sisaCutiTahunan: 0,
    tanggalMulai: DateTime(2024, 4, 10),
    tanggalSelesai: DateTime(2024, 4, 14),
    keterangan: "Cuti tahunan kedua",
    fileName: "cuti_kedua.jpg",
  ),
  CutiHistory(
    nama: "Bayu Pramana",
    alamat: "Jl. Sanggrahan No. 15",
    devisi: "Mobile App Developer",
    sisaCutiTahunan: 3,
    tanggalMulai: DateTime(2024, 6, 5),
    tanggalSelesai: DateTime(2024, 6, 8),
    keterangan: "Cuti tahunan kedua",
    fileName: "cuti_kedua.jpg",
  ),
  CutiHistory(
    nama: "Dita Puspitasari",
    alamat: "Jl. Medoho No. 18",
    devisi: "Web Developer",
    sisaCutiTahunan: 2,
    tanggalMulai: DateTime(2024, 7, 20),
    tanggalSelesai: DateTime(2024, 7, 25),
    keterangan: "Cuti tahunan kedua",
    fileName: "cuti_kedua.jpg",
  ),
  CutiHistory(
    nama: "Ricky Prasetyo",
    alamat: "Jl. Jolotundo No. 05",
    devisi: "Software Developer",
    sisaCutiTahunan: 4,
    tanggalMulai: DateTime(2024, 8, 15),
    tanggalSelesai: DateTime(2024, 8, 18),
    keterangan: "Cuti tahunan kedua",
    fileName: "cuti_kedua.jpg",
  ),
  CutiHistory(
    nama: "Toni Setiawan",
    alamat: "Jl. Anggrek No. 13",
    devisi: "Network Security Analyst",
    sisaCutiTahunan: 1,
    tanggalMulai: DateTime(2024, 9, 10),
    tanggalSelesai: DateTime(2024, 9, 14),
    keterangan: "Cuti tahunan kedua",
    fileName: "cuti_kedua.jpg",
  ),
];
