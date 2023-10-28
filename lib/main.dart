import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue, // Warna biru
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/dashboard': (context) => const DashboardPage(),
        '/profil': (context) => const ProfilePage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halaman Login",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue[700], // Warna biru tua
        centerTitle: true, // Tengahkan teks pada App Bar
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), // Lengkungan kiri bawah
            bottomRight: Radius.circular(20), // Lengkungan kanan bawah
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Selamat Datang di Aplikasi",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            Icon(
              Icons.person,
              size: 100, // Atur ukuran ikon
              color: Colors.blue[700], // Warna ikon
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dashboard');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[700], // Warna biru tua
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halaman Dashboard",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue[700], // Warna biru tua
        centerTitle: true, // Tengahkan teks pada App Bar
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), // Lengkungan kiri bawah
            bottomRight: Radius.circular(20), // Lengkungan kanan bawah
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.dashboard),
            title: Text("Item 1"),
          ),
          const ListTile(
            leading: Icon(Icons.dashboard),
            title: Text("Item 2"),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Card Item 1"),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Card Item 2"),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profil');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[700], // Warna biru tua
            ),
            child: const Text(
              "Profil",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Halaman Profil",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue[700], // Warna biru tua
        centerTitle: true, // Tengahkan teks pada App Bar
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), // Lengkungan kiri bawah
            bottomRight: Radius.circular(20), // Lengkungan kanan bawah
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/profilepic.png'), // Ganti dengan gambar profil Anda
              radius: 100,
            ),
            Text(
              "Ananta Larassenna",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue[700], // Warna biru tua
              ),
            ),
            Icon(
              Icons.person,
              size: 48,
              color: Colors.blue[700], // Warna biru tua
            ),
            const Text(
              "Saya adalah Mahasiswa UPGRIS FTI Prodi Informatika",
              style: TextStyle(fontSize: 16, color: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
