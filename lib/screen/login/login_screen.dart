import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/bottom_tabber/bottom_tabber_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final input1 = TextEditingController();
  final input2 = TextEditingController();
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/login_backgound_image.png'),

          // main content
          Positioned(
            top: 120,
            left: 40,
            right: 40,
            child: Column(
              children: [
                // logo
                Image.asset('assets/images/logo_with_text.png'),
                const SizedBox(height: 40),

                // email field
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  color: Colors.white70,
                  child: TextField(
                    controller: input1,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Email',
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // password field
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  color: Colors.white70,
                  child: TextField(
                    controller: input2,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'password',
                    ),
                  ),
                ),
                SizedBox(height: 8),

                // remember + forgot
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: check,
                          onChanged: (v) => setState(() => check = v!),
                        ),
                        Text('Remember username'),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Login button expands to fill available width
                    SizedBox(
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(250, 50),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => BottomNavigationBarExample(),
                            ),
                          );
                        },
                        child: Text('Login'),
                      ),
                    ),

                    SizedBox(width: 12),

                    // QR code icon button
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        shape: BoxShape.rectangle,
                      ),
                      child: Icon(Icons.qr_code_scanner),
                    ),
                  ],
                ),

                SizedBox(height: 16),

                // register link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have account? "),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register Here',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
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
    );
  }
}
