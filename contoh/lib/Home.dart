import 'package:contoh/JadwalLibur.dart';
import 'package:contoh/sisacuti.dart';
import 'package:flutter/material.dart';
import 'DataKaryawan.dart';
import 'Pengajuancuti.dart';
import 'Profile.dart';
import 'main.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cuti Tahunan",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cuti Tahunan"),
        actions: [],
      ),
      body: Container(
        color: Color.fromARGB(
            255, 195, 184, 234), // Ganti dengan warna yang Anda inginkan
        child: !isDrawerOpen
            ? GridView.count(
                crossAxisCount: 2,
                children: [
                  DashboardCard(
                    title: "Jadwal Libur",
                    icon: Icons.calendar_today,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HolidaySchedule(),
                      ));
                    },
                    iconColor: Colors.white,
                    cardColor: Color.fromARGB(
                        255, 157, 137, 221), // Atur warna latar belakang kartu
                  ),
                  DashboardCard(
                    title: "Form Pengajuan Cuti",
                    icon: Icons.email,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Pengajuancuti(),
                      ));
                    },
                    iconColor: Colors.white, // Atur warna ikon
                    cardColor: Color.fromARGB(
                        255, 157, 137, 221), // Atur warna latar belakang kartu
                  ),
                  DashboardCard(
                    title: "Histori Cuti Tahunan",
                    icon: Icons.history,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PgeHistory(),
                      ));
                    },
                    iconColor: Colors.white, // Atur warna ikon
                    cardColor: Color.fromARGB(
                        255, 157, 137, 221), // Atur warna latar belakang kartu
                  ),
                  DashboardCard(
                    title: "Sisa Cuti Tahunan",
                    icon: Icons.beach_access,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SisaCutiPage(),
                      ));
                    },
                    iconColor: Colors.white, // Atur warna ikon
                    cardColor: Color.fromARGB(
                        255, 157, 137, 221), // Atur warna latar belakang kartu
                  ),
                ],
              )
            : null,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const CircleAvatar(
              radius: 52,
              backgroundImage: NetworkImage(
                  "https://i0.wp.com/hariannusantara.com/wp-content/uploads/2019/06/gambar-pemandangan-sunset3.jpg"),
            ),
            const UserAccountsDrawerHeader(
              accountName: Text("Anisa Rahmawati"),
              accountEmail: Text("Anisa02@gmail.com"),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profil Karyawan"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Keluar"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  final Color iconColor;
  final Color cardColor;

  const DashboardCard({
    required this.title,
    required this.icon,
    required this.onTap,
    this.iconColor = Colors.blue,
    this.cardColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        color: cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48,
              color: iconColor,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
