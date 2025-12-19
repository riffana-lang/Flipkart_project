import 'package:flipkart_main_project/pages/bottomNav.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
    const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    if (emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) =>  AlertDialog(
          title: Text("Error"),
          content: Text("Please enter email and password"),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_)=>BottomNav(),
        ),
      );
    }
  }
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 65, 97),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
               SizedBox(height: 240),
              Image.network(
                'https://static.vecteezy.com/system/resources/thumbnails/054/650/802/small/flipkart-logo-rounded-flipkart-logo-free-download-flipkart-logo-free-png.png',
                height: 90,
              ),
               SizedBox(height: 30),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:  EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextField(
                        controller: emailController,
                        decoration:  InputDecoration(
                          labelText: 'Email',
                          prefixIcon:
                              Icon(Icons.email_outlined),
                        ),
                      ),
                       SizedBox(height: 20),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration:  InputDecoration(
                          labelText: 'Password',
                          prefixIcon:
                              Icon(Icons.lock_outline),
                        ),
                      ),
                       SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: login,
                          style:
                            ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding:
                               EdgeInsets.symmetric( vertical: 14),
                          ),
                          child:  Text(
                            "Login",
                            style:
                                TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                       SizedBox(height: 10),
                      TextButton(
                        onPressed: () {},
                        child:  Text(
                          "New to Flipkart? Create an account",
                        ),
                      ),
                    ],
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
