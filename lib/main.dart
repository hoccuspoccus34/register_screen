import 'package:flutter/material.dart';
import 'package:register_screen/logged.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
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
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),

          ),
          child: SafeArea (
            child: Column(
              children: [
                Container(
                  height: 100,
                  margin: EdgeInsets.only(top: 80),
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Container(
                            margin: EdgeInsets.only(bottom: 30, top: 30),
                            height: 50,
                            width: 600,

                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Login",
                                  prefixIcon: Icon(Icons.login_outlined,
                                    color: Colors.white,
                                    size: 30,),
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(bottom: 30),
                            height: 50,
                            width: 600,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: Icon(Icons.email_outlined,
                                  color: Colors.white,
                                  size: 30,),
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(bottom: 30),
                            height: 50,
                            width: 600,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Password",
                                prefixIcon: Icon(Icons.password,
                                  color: Colors.white,
                                  size: 30,),
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            height: 50,
                            width: 600,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Confirm Password",
                                prefixIcon: Icon(Icons.password,
                                  color: Colors.white,
                                  size: 30,),
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        Text("Already have account? Click here",
                        style: TextStyle(color: Colors.white),
                        ),
                        Column(
                          children: [
                            SizedBox(height: 40,),
                            Container(
                              width: double.infinity,
                              child: GestureDetector(
                                onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>logged()));
                                  },
                                child: Container(

                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Center(
                                      child: Text("SIGN UP",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        ],
                      ),
                      ),

                  ),

              ],
            ),
          ),
        ),
      ),
      ],
    );

  }
}
