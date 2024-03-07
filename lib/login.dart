import 'package:flutter/material.dart';

// Membuat kelas LoginScreen yang merupakan StatefulWidget
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

// Mengontrol input email dan password
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // Metode build yang digunakan untuk merender tampilan widget
  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    double ffem = 1.0;

    // Mengatur visual widget
    return Scaffold(
      // Mengatur agar halaman tidak diresize saat keyboard muncul
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          // Mengatur padding pada container
          padding: EdgeInsets.fromLTRB(43, 70, 45, 50),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Container untuk menampilkan logo
              Container(
                margin: EdgeInsets.fromLTRB(1, 0, 0, 49),
                width: 277,
                height: 122,
                child: Image.asset(
                  'assets/logo.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              // Container untuk input email
              Container(
                margin: EdgeInsets.fromLTRB(2, 0, 0, 18),
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
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
                      controller: emailController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(22, 17, 22, 15),
                        filled: true,
                        fillColor: Color(0x33c4c4c4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Container untuk input password
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 2, 18),
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(2, 0, 0, 9),
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
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(22, 17, 22, 15),
                        filled: true,
                        fillColor: Color(0x33c4c4c4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Container untuk tombol "Log in"
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 2, 20),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff97d3f5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Log in',
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
              // Container untuk tombol "Create an account"
              Container(
                margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/'); // Navigasi ke halaman pendaftaran saat tombol ditekan
                  },
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Text(
                    'Create an account',
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
    );
  }
}
