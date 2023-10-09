import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Tambahkan gambar di atas Container "Paralayang"
    Widget imageSection = Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Image.network(
          'https://asset.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fcity-light&psig=AOvVaw37nVSlQdH0YeIUOdGKUw8_&ust=1696944748527000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLixxfmJ6YEDFQAAAAAdAAAAABAE',
          width: 500.0, // Sesuaikan lebar gambar sesuai kebutuhan Anda
          height: 300.0, // Sesuaikan tinggi gambar sesuai kebutuhan Anda

          fit: BoxFit
              .cover, // Sesuaikan mode tampilan gambar sesuai kebutuhan Anda
        ));
    Widget titleSection = Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Paralayang',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('42'),
        ],
      ),
    );

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(color, Icons.call, 'CALL'),
            _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
            _buildButtonColumn(color, Icons.share, 'SHARE'),
          ],
        ));

    Widget textSection = Container(
      padding: const EdgeInsets.all(20),
      child: const Text(
        'Paralayang Batu adalah destinasi wisata alam yang terkenal di kawasan Gunung Banyak, Batu, Jawa Timur. Tempat yang berada di atas bukit dengan ketinggian sekitar 1.326 mdpl ini banyak dikunjungi wisatawan untuk menjajal kegiatan outdoor paralayang.'
        'Nama : Mutiara Devita Eka Putri NIM : 2141720135',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'MyApp',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Flutter'),
        ),
        body: ListView(
          children: [
            imageSection,
            titleSection,
            buttonSection,
            textSection
            // Tambahkan widget lain di sini sesuai kebutuhan Anda.
          ],
        ),
      ),
    );
  }
}
