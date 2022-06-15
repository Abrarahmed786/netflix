import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          "NETFLIX",
          style: GoogleFonts.bebasNeue(
            fontSize: 30,
            color: const Color(0xffE50914),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
