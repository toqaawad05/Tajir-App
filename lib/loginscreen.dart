import 'package:Tajir/home.dart';
import 'package:Tajir/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart'; // لإضافة الموجة
// استيراد ملف الألوان

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // الموجه
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 200,
                color: Color(0xff2d3250), 
                child: Center(
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Login Title
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2d3250), 
                    ),
                  ),
                  SizedBox(height: 30),

                  // Email
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'demo@gmail.com',
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Forgot Password?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: rememberMe,
                            onChanged: (val) {
                              setState(() {
                                rememberMe = val!;
                              });
                            },
                          ),
                          Text("Remember Me"),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Forgot Password?"),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Login
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                     onPressed: () {
                     Navigator.push(
                      context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                      child: Text("Login", style: TextStyle(fontSize: 18)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff2d3250),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),

                  // Don't have an Account?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an Account? "),
                      GestureDetector(
                       onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  SignUpScreen()),
  );
},
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: Color(0xff2d3250),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
