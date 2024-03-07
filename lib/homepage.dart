import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan lebar layar perangkat dan menghitung faktor skalanya
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    // Memulai pembangunan tata letak
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'), // Judul AppBar
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity, // Lebar kontainer utama
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Kartu tutor
              Padding(
                padding: EdgeInsets.only(left: 31 * fem, top: 379 * fem),
                child: Container(
                  width: 690 * fem,
                  height: 217 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Container untuk gambar tutor dan informasi
                      Container(
                        width: 134 * fem,
                        height: double.infinity,
                        margin: EdgeInsets.only(right: 31 * fem),
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(15 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0 * fem, 0 * fem),
                              blurRadius: 2 * fem,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Container untuk gambar tutor
                            Container(
                              width: double.infinity,
                              height: 134 * fem,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/photo-by-marionel-luciano-bg-FDZ.png', // Path gambar tutor
                                  ),
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15 * fem),
                                  topRight: Radius.circular(15 * fem),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 91 * fem,
                                    top: 6 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 32 * fem,
                                        height: 14 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(3 * fem),
                                            color: Color(0xff6ac9ff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 96 * fem,
                                    top: 8 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 21 * fem,
                                        height: 10 * fem,
                                        child: Text(
                                          'math',
                                          style: TextStyle(
                                            fontFamily: 'Lexend Deca',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.25 * ffem / fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Informasi tutor
                            Padding(
                              padding: EdgeInsets.fromLTRB(12 * fem, 0 * fem, 0 * fem, 0 * fem),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ambika', // Nama tutor
                                    style: TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.25 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur.', // Deskripsi tutor
                                    style: TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.25 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  Text(
                                    'Selengkapnya', // Tautan selengkapnya tentang tutor
                                    style: TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      fontSize: 8 * ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.25 * ffem / fem,
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff6ac9ff),
                                      decorationColor: Color(0xff6ac9ff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Container untuk Video Materi
                      Container(
                        width: 122.75 * fem,
                        height: 19 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 0 * fem, top: 16 * fem),
                              child: SizedBox(
                                width: 191 * fem,
                                height: 13 * fem,
                                child: Text(
                                  'Video Materi',
                                  style: TextStyle(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w300,
                                    height: 1.25 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 0 * fem, top: 0 * fem),
                              child: SizedBox(
                                width: 48 * fem,
                                height: 17 * fem,
                                child: Text(
                                  'Aljabar',
                                  style: TextStyle(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 13 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.25 * ffem / fem,
                                    color: Color(0xff1e1e1e),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Tambahkan widget tambahan di sini
              Container(
                margin: EdgeInsets.fromLTRB(12 * fem, 0 * fem, 0 * fem, 0 * fem),
                child: Text(
                  'Megan',
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    fontSize: 15 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.25 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(11 * fem, 0 * fem, 0 * fem, 10 * fem),
                constraints: BoxConstraints(
                  maxWidth: 103 * fem,
                ),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur.',
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    fontSize: 10 * ffem,
                    fontWeight: FontWeight.w300,
                    height: 1.25 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(13 * fem, 0 * fem, 0 * fem, 0 * fem),
                child: Text(
                  'Selengkapnya',
                  style: TextStyle(
                    fontFamily: 'Lexend Deca',
                    fontSize: 8 * ffem,
                    fontWeight: FontWeight.w300,
                    height: 1.25 * ffem / fem,
                    decoration: TextDecoration.underline,
                    color: Color(0xff6ac9ff),
                    decorationColor: Color(0xff6ac9ff),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
