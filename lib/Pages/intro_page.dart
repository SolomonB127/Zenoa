import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zenoa/Components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // logo
              Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(
                height: 25,
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
