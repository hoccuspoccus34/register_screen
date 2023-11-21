import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register Screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Register Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
     Container(
      decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage('images/background.jpg'),
           fit: BoxFit.cover,
    ),
    ),
    ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea (
          child: Column(
            children: [
              Container(
                height: 150,
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: const Text("Register",
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child:
                    Container(
                      width: 300,
                      height: 450,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 120,
                          child: Icon(Icons.add_circle_outline,
                          size: 60,
                            color: Colors.orange[300],
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
      ],
    );

  }
}
