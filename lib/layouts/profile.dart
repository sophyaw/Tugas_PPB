import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // Fungsi untuk menampilkan dialog gambar penuh
  void _showFullImage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset('assets/profile.jpg'),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      _showFullImage(context);
                    },
                    child: const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                '@arinsophy',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                '070 / 072',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    child: Image.asset(
                      'assets/ig.jpeg',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    child: Image.asset(
                      'assets/linked.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Text(
              'Deskripsi : Tugas 1 Pemrograman Piranti Bergerak',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}

extension on TextTheme {
  get bodyText2 => null;

  get subtitle1 => null;

  get headline5 => null;
}
