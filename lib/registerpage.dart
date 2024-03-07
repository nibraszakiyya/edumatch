import 'package:flutter/material.dart';

// Membuat kelas LoginScreen yang merupakan StatefulWidget
class RegisterPage extends StatelessWidget {
  @override
  // Metode build yang digunakan untuk merender tampilan widget
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    // Mengatur visual widget
    return Scaffold(
      // Mengatur agar halaman bisa discroll
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.fromLTRB(43 * fem, 110 * fem, 44 * fem, 100 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Container untuk menampilkan logo
                Container(
                  width: 277 * fem,
                  height: 122 * fem,
                  child: Image.asset(
                    'assets/logo.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(1, 0, 0, 49),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10 * fem),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Container untuk menampilkan kolom nama
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                        child: Text(
                          'Nama',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.25 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      TextField( // Changed Text to TextField
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(22 * fem, 17 * fem, 22 * fem, 15 * fem),
                          filled: true,
                          fillColor: Color(0x33c4c4c4),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10 * fem),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container untuk menampilkan kolom Email
                Container(
                  margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 1 * fem, 12 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10 * fem),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.25 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      TextField( 
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(22 * fem, 17 * fem, 22 * fem, 15 * fem),
                          filled: true,
                          fillColor: Color(0x33c4c4c4),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10 * fem),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container untuk menampilkan kolom no telp
                Container(
                  margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 32 * fem),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10 * fem),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 12 * fem),
                        width: 300 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                              child: Text(
                                'No Telp',
                                style: TextStyle(
                                  fontFamily: 'Lexend Deca',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.25 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            TextField( 
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(22 * fem, 17 * fem, 22 * fem, 15 * fem),
                                filled: true,
                                fillColor: Color(0x33c4c4c4),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10 * fem),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // Container untuk menampilkan password
                        margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 6 * fem),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontFamily: 'Lexend',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.25 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      TextField( 
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(22 * fem, 17 * fem, 22 * fem, 15 * fem),
                          filled: true,
                          fillColor: Color(0x33c4c4c4),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10 * fem),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container untuk menampilkan tombol register
                Container(
                  margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 10 * fem),
                  child: ElevatedButton( 
                    onPressed: () {
                      
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                    ),
                    child: Container(
                      width: 300 * fem,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10 * fem),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff97d3f5),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontFamily: 'Lexend Deca',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.25 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Container untuk menampilkan text have an account
                Container(
                  margin: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 0 * fem, 0 * fem), 
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login'); 
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Have an account',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        fontSize: 13 * ffem,
                        fontWeight: FontWeight.w300,
                        height: 1.25 * ffem / fem,
                        decoration: TextDecoration.underline,
                        color: Color(0xff00a2ff),
                        decorationColor: Color(0xff00a2ff),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
