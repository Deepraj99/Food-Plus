import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                  color: Colors.black,
                  iconSize: 30.0,
                ),
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        blurRadius: 6.0,
                        spreadRadius: 4.0,
                        offset: Offset(0.0, 3.0),
                      ),
                    ],
                    color: Colors.blue[100],
                    shape: BoxShape.circle,
                    image:
                        DecorationImage(image: AssetImage("assets/tuxedo.png")),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.0),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 185.0),
                    child: Text(
                      "Search for".toUpperCase(),
                      style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.bold, fontSize: 27.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 240.0),
                    child: Text(
                      "Recipes".toUpperCase(),
                      style: GoogleFonts.notoSans(
                          fontWeight: FontWeight.bold, fontSize: 27.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
