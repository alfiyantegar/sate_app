// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/sate_tile.dart';
import 'package:flutter_application_1/util/sate_type.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List sateType = [
    ['Sate Kambing', true],
    ['Gulai', false],
    ['Tengkleng', false],
    ['Tongseng', false],
  ];

  void sateTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < sateType.length; i++) {
        sateType[i][1] = false;
      }
      sateType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          ),
        ]),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Cari Menu Yang Anda Inginkan",
                style: GoogleFonts.bebasNeue(
                  fontSize: 60,
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Temukan Menu Anda..",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sateType.length,
                itemBuilder: (context, index) {
                  return SateType(
                      sateType: sateType[index][0],
                      isSelected: sateType[index][1],
                      onTap: () {
                        sateTypeSelected(index);
                      });
                },
              ),
            ),
            Expanded(
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Satetile(
                  sateImagePath: 'lib/images/sate2.jpg',
                  sateName: 'Sate Kambing',
                  sateName2: 'Original',
                  satePrice: 'Rp25.000',
                ),
                Satetile(
                  sateImagePath: 'lib/images/gulai.jpg',
                  sateName: 'Gulai',
                  sateName2: 'Original',
                  satePrice: 'Rp18.000',
                ),
                Satetile(
                  sateImagePath: 'lib/images/tengkleng.jpg',
                  sateName: 'Tengkleng',
                  sateName2: 'Original',
                  satePrice: 'Rp25.000',
                ),
                Satetile(
                  sateImagePath: 'lib/images/tongseng2.jpg',
                  sateName: 'Tongseng',
                  sateName2: 'Original',
                  satePrice: 'Rp25.000',
                ),
              ]),
            )
          ],
        ));
  }
}
