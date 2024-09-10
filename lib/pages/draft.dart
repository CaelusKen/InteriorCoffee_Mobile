import 'package:flutter/material.dart';

class Draft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Circular element at the top
        Positioned(
          top: -150,
          left: -50,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Color(0xFFF1E0D6), // Light circle color
              shape: BoxShape.circle,
            ),
          ),
        ),

        // Main content
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Back button
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    // Add back navigation functionality here
                  },
                ),
              ),
              
              SizedBox(height: 20),

              // Welcome text
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome back!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Please login below",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
              
              SizedBox(height: 50),
              
              // Email TextField
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your email',
                ),
              ),
              
              SizedBox(height: 20),
              
              // Password TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Enter your password',
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              
              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Add forgot password functionality here
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              
              SizedBox(height: 20),
              
              // Login Button
              ElevatedButton(
                onPressed: () {
                  // Add login functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFDAA14B),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Login', style: TextStyle(fontSize: 18)),
              ),
              
              SizedBox(height: 20),
              
              // Or login with
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or Login with"),
                  ),
                  Expanded(child: Divider(color: Colors.grey)),
                ],
              ),
              
              SizedBox(height: 20),
              
              // Google login button
              OutlinedButton.icon(
                onPressed: () {
                  // Add Google login functionality here
                },
                icon: Image.asset(
                  'assets/google_icon.png', // Add Google icon here
                  height: 20,
                  width: 20,
                ),
                label: Text('Google'),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              
              SizedBox(height: 20),
              
              // Register Now
              GestureDetector(
                onTap: () {
                  // Add register navigation functionality here
                },
                child: Text.rich(
                  TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Register Now',
                        style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
