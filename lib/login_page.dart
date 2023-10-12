import 'package:flutter/material.dart';
import 'package:t1_2020130048/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obs = true;
  final _emailController = TextEditingController();
  void onValueChange(){
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Center(
              child: Text(
                "HATOCA",
                style: TextStyle(
                  color: Colors.red[900],
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 8,
              child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
              const TabBar(
                tabs: [
                  Tab(text: 'Login'),
                  Tab(text: 'Register'),
                ],
              ),
              Expanded(
                flex: 8,
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        TextField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                         labelText: 'Email',
                          hintText: 'NamaAnda@gmail.com',
                          ),
                        ),
                        TextFormField(
                          obscureText: obs,
                          decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Password Anda',
                          suffix: IconButton(
                          onPressed: (){
                            obs = !obs;
                             onValueChange();
                          },
                          icon: const Icon(Icons.remove_red_eye),
                          ),
                  counter: Text(
                  "Forgot Password",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.red[800],
                  ),
                ),
              ),
            ),
                    const SizedBox(
              height: 40,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 8,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => HomePage(
                        username: _emailController.text,
                      ),
                      ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[800],
                      padding: const EdgeInsets.all(20.0),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[800],
                        padding: const EdgeInsets.all(17.0),
                      ),
                      child: const Icon(Icons.fingerprint),
                    ),
                  ),
                ),
              ],
            ),
                      ],
                    ),
                    const Center(child: Text('Register Tab')),
                  ],
                ),
              ),
                      ],
                    ),
                  ),
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: const TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.red[800],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}