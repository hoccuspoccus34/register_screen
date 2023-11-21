import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class logged extends StatefulWidget {
  const logged({super.key});

  @override
  State<logged> createState() => _loggedState();
}

class _loggedState extends State<logged> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Container(
          child: Text("Zostales zalogowany")),
      SizedBox(height: 40,),
      Container(
        width: double.infinity,
        child: GestureDetector(
          onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyApp()));
          },
          child: Container(

            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
                child: Text("BACK",
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
    );
  }
}
