import 'package:flutter/material.dart';
import 'package:tugas_uts/nav-drawer.dart';

class Sejarah extends StatefulWidget {
  @override
  _SejarahState createState() => _SejarahState();
}

class _SejarahState extends State<Sejarah> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      drawer: DrawerWidget(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Autobiografi Ozan"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(20.0)),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage("assets/fam.jpeg"),
                            fit: BoxFit.fill)),
                    width: 600,
                    height: 300),
                Text(
                    "Lahir pada hari Selasa tanggal 12-Februari-2002, dari pasangan Edison dan Zulniah, Kedua orang tua terbaik di dunia. Putra pertama dan anak ketiga dari 4 bersaudara yang kelak akan menjadi tulang punggung keluarga yang kuat dan sukses. Pertama kali duduk di bangku sekolah pada tahun 2007 di TK Negeri Al-Raudah selama setahun, yang kemudian naik jenjang ke sekolah SD Negeri 002. Langganan juara kelas selama SD bahkan mendapatkan predikat nilai tertinggi ke 3 di sekolah pada Ujian Nasional, Tapi tidak berlaku saat SMP, Juara Kelas? Masih, but not the smartest. Sempat bimbang ingin lanjut ke SMK/SMA, dengan NIM yang dapat dikatakan 'Bakal keterima di semua sekolah', banyak pilihan Sekolah setingkat di Samarinda, tapi akhirnya melanjutkan ke SMK 7 Samarinda dengan jurusan TKJ yang diambil. Lulus dengan nilai yang cukup memuaskan, sempat mendaftar SNMPTN, tapi Tuhan berkehendak lain, mungkin SBMPTN saja sudah sangat membahagiakan. Mendaftar ke Jurusan Ilmu Komunikasi dan mendaptakan beasiswa Bidik Misi, salah satu hal yang sangat saya syukurin sampai sekarang. ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    )),
                Text("",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    )),
                Text(
                    "Hal yang paling membahagiakan selama hidup ? 'Hidup di setiap detiknya'",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
