import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controller

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPwdController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPwdController.dispose();
    super.dispose();
  }

  Future signUp() async {
    if (passwordConfirmed())
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() == _confirmPwdController.text.trim()) {
      return true;
    } else {
      return false;
    }
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
              'Hello There',
              style: GoogleFonts.bebasNeue(
                fontSize: 46,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Register below with details',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 50),

            // Email
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                controller: _emailController,
                style: TextStyle(color: Colors.white),
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

            // confirm Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                obscureText: true,
                controller: _confirmPwdController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Color.fromARGB(255, 33, 41, 64),
                  filled: true,
                ),
              ),
            ),
            SizedBox(height: 10),

            // sign in button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: signUp,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                      child: Text(
                    'Sign Up',
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
                Text('Already have an account ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                GestureDetector(
                  onTap: widget.showLoginPage,
                  child: Text(
                    'Sign In',
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
