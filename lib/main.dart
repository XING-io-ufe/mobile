import 'package:flutter/material.dart';
// import 'package:flutter_application_2/screen/bottom_tabber/bottom_tabber_screen.dart';
// import 'package:flutter_application_2/screen/home/home_screen.dart';
import 'package:flutter_application_2/screen/login/login_screen.dart';
// import 'package:flutter_application_2/screen/login/login_screen.dart';
// import 'package:flutter_application_2/screen/calculator/calculator_lesson_1.dart';
// import 'package:flutter_application_2/screen/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

  // class MyHomePage extends StatefulWidget {
  //   const MyHomePage({super.key, required this.title});
  //   final String title;

  //   @override
  //   State<MyHomePage> createState() => _MyHomePageState();
  // }

  // class _MyHomePageState extends State<MyHomePage> {
  //   int _counter = 0;

  //   void _incrementCounter() {
  //     setState(() {
  //       _counter++;
  //     });
  //   }

  //   @override
  //   Widget build(BuildContext context) {
  //     return Scaffold(
  //       appBar: AppBar(
  //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  //         title: Text(widget.title),
  //       ),
  //       body: Container(
  //         height: 300,
  //         decoration: BoxDecoration(
  //           color: Colors.amberAccent,
  //           borderRadius: BorderRadius.circular(30),
  //           border: Border.all(width: 5, color: Colors.red),
  //         ),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             const Text('You have pushed the button this many times:'),
  //             Text(
  //               '$_counter',
  //               style: Theme.of(context).textTheme.headlineMedium,
  //             ),
  //             Image.asset(
  //               'assets/images/login_backgound_image.png',
  //               height: 100,
  //               width: 75,
  //             ),
  //             Row(
  //               children: [
  //                 Container(
  //                   alignment: Alignment.center,
  //                   height: 100,
  //                   width: 100,
  //                   decoration: BoxDecoration(
  //                     color: Colors.blue,
  //                     shape: BoxShape.circle,
  //                   ),
  //                   child: Column(
  //                     children: [
  //                       Text('data', style: TextStyle(fontSize: 20)),
  //                       Text('data', style: TextStyle(fontSize: 20)),
  //                       Text('data', style: TextStyle(fontSize: 20)),
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ),
  //       floatingActionButton: FloatingActionButton(
  //         onPressed: _incrementCounter,
  //         tooltip: 'Increment',
  //         child: const Icon(Icons.add),
  //       ),
  //     );
  //   }
  // }
