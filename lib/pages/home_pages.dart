import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Bienvenido a tu cuenta',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Content(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 3, 127, 194),
            Color.fromARGB(255, 41, 170, 225),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      constraints: BoxConstraints(maxWidth: 400),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon(Icons.visibility),
                onPressed: () {
                  // Toggle password visibility
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              Text('Remember Me'),
              Spacer(),
              TextButton(
                onPressed: () {
                  // Navigate to forgot password screen
                },
                child: Text('Forgot Password?'),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Perform login
            },
            child: Text('Login'),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Or Sign in with',
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  // Perform Facebook login
                },
                icon: Icon(Icons.facebook),
                iconSize: 40,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? "),
              TextButton(
                onPressed: () {
                  // Navigate to registration screen
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
