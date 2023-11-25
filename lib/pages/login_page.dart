import 'package:flutter/material.dart';
import 'package:user_login_page/components/my_button.dart';
import 'package:user_login_page/components/my_textfield.dart';
import 'package:user_login_page/components/squar_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //User signin method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // Logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              // Welcome back
              Text('Welcome back, you\'ve been missed!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  )),
              const SizedBox(height: 25),

              // usename textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 10),

              // user forget password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 50),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey[500],
                        thickness: 0.5,
                        // indent: 25,
                        // endIndent: 25,
                      ),
                    ),
                    Text('or continue with',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16,
                        )),
                    Expanded(
                      child: Divider(
                        color: Colors.grey[500],
                        thickness: 0.5,
                        // indent: 25,
                        // endIndent: 25,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),


              // Google or Facebook icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquarTile(imagePath: 'lib/images/google.png'),
                  const SizedBox(width: 20),
                  SquarTile(imagePath: 'lib/images/facebook.png'),
                ],
              ),
              const SizedBox(height: 50),
              // Not a member, now register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text('Register',
                     style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,

                     ),
                    ),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
