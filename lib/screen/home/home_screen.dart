import 'package:flutter/material.dart';
import 'package:flutter_application_2/theme/io_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500,
          height: 180,
          decoration: BoxDecoration(
            color: IOColors.primary400,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/logo_with_text.png',
                width: 70,
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: Image.asset(
                          'assets/images/logo_with_text.png',
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 0,
                            ),
                            child: Text(
                              'Welcome back!',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 0,
                            ),
                            child: Text(
                              'Guest001',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: IOColors.primary500,
                    ),
                    child: Icon(
                      Icons.notifications,
                      size: 24,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
              //
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tournament List'),
                  SizedBox(height: 10),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 120,
                        height: 160,
                        decoration: BoxDecoration(
                          color: IOColors.text500,
                          border: Border.all(
                            width: 1,
                            color: Color.fromARGB(128, 58, 58, 58),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/images/login_backgound_image.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text('PUBG MOBILE'),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -10,
                        left: 10,
                        child: Container(
                          width: 100,
                          height: 20,
                          padding: EdgeInsets.symmetric(
                            horizontal: 2,
                            vertical: 0,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 239, 241, 68),
                            border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 238, 215, 13),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          alignment: Alignment.center,
                          child: Text('not started', style: colors: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
