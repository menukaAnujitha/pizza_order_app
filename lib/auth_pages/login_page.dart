import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pizza_order_app/auth_pages/forgot_pw_page.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({Key? key, required this.showRegisterPage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controller

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    //discards any resources used by the object.
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 20, 37),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.local_pizza_rounded,
              size: 130,
              color: Colors.white,
            ),

            SizedBox(height: 20),
            Text(
              'PIZZA',
              style: GoogleFonts.bebasNeue(
                fontSize: 46,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Welcome back !',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 50),

            // Email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: _emailController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Color.fromARGB(255, 33, 41, 64),
                  filled: true,
                ),
              ),
            ),

            SizedBox(height: 10),

            // Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                controller: _passwordController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Color.fromARGB(255, 33, 41, 64),
                  filled: true,
                ),
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ForgotPasswordPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            // sign in button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: signIn,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                      child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
                ),
              ),
            ),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account ',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                GestureDetector(
                  onTap: widget.showRegisterPage,
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      )),
    );
  }
}
