import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenoa/Components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // logo
              Image.asset(
                'assets/Images/Zenoa_logo.png',
                width: screenWidth * 0.5,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              SizedBox(
                height: screenHeight * 0.05,
              ),

              // title
              Text("Zenoa Minimal Shop",
                  style: GoogleFonts.cairoPlay(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 30.0))),

              const SizedBox(
                height: 10,
              ),
              // sub-title
              const Text("Premium Quality Products"),

              const SizedBox(
                height: 10.0,
              ),
              NextButton(
                  onTap: () {
                    Navigator.pushNamed(context, "/homepage");
                  },
                  child: Icon(
                    Icons.arrow_circle_right,
                    size: 50,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ))
            ],
          ),
        ));
  }
}
