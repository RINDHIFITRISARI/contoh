import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    "https://i0.wp.com/hariannusantara.com/wp-content/uploads/2019/06/gambar-pemandangan-sunset3.jpg"),
              ),
              const SizedBox(height: 20),
              itemProfile('NIK', '33250824560002', Icons.credit_card,
                  color: Colors.white),
              const SizedBox(height: 10),
              itemProfile('Nama', 'Anisa Rahmawati', Icons.person,
                  color: Colors.white),
              const SizedBox(height: 10),
              itemProfile('Divisi', 'Data Analyst', Icons.work,
                  color: Colors.white),
              const SizedBox(height: 10),
              itemProfile('Pendidikan', 'S1 Teknik Informatika', Icons.school,
                  color: Colors.white),
              const SizedBox(height: 10),
              itemProfile('Tephone', '082325620683', Icons.phone,
                  color: Colors.white),
              const SizedBox(height: 10),
              itemProfile('Alamat', 'Jl. Krakatau No. 08', Icons.location_on,
                  color: Colors.white),
              const SizedBox(height: 10),
              itemProfile('Email', 'Anisa02@gmail.com', Icons.mail,
                  color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemProfile(String title, String subtitle, IconData iconData,
      {Color color = Colors.white}) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 6, 150, 222),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: const Color.fromARGB(255, 6, 150, 222).withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: ListTile(
        title: Text(title, style: TextStyle(color: Colors.white)),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.white)),
        leading: Icon(iconData, color: Colors.white),
        tileColor: Colors.white,
      ),
    );
  }
}
