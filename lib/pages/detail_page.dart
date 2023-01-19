// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: height * 0.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("lib/images/sate2.jpg"))),
                ),
                Positioned(
                    top: 16,
                    left: 16,
                    child: Container(
                      // ignore: sort_child_properties_last
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                      ),
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    )),
                Positioned(
                  top: 16,
                  right: 16,
                  child: Container(
                    // ignore: sort_child_properties_last
                    child: Icon(
                      Icons.assistant_direction,
                      color: Colors.white,
                    ),

                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
                Container(
                    // ignore: sort_child_properties_last
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        "Sate Kambing",
                        style: GoogleFonts.montserrat(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    height: height * .07,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("4.6 (32 review)",
                          style: GoogleFonts.montserrat(fontSize: 12))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("10.00 - 22.00 wib",
                          style: GoogleFonts.montserrat(fontSize: 12))
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Color.fromARGB(255, 163, 125, 11),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Rp25.000",
                            style: GoogleFonts.montserrat(fontSize: 14),
                          ),
                          Text("Sate Kambing Original",
                              style: GoogleFonts.montserrat(fontSize: 12)),
                        ],
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Pesan"))
                    ],
                  ),
                ),
              ),
            ),
            TitleDetail(title: "Alamat", detail: "Jl. Raya Solo - Sragen"),
            TitleDetail(
                title: "Deskripsi",
                detail:
                    "Sate atau satai adalah makanan yang terbuat dari daging yang dipotong kecil-kecil dan ditusuk sedemikian rupa dengan tusukan lidi tulang daun kelapa atau bambu, kemudian dipanggang menggunakan bara arang kayu. Sate disajikan dengan berbagai macam bumbu yang bergantung pada variasi resep sate."),
          ],
        )),
      ),
    );
  }
}

class TitleDetail extends StatelessWidget {
  final String title;
  final String detail;
  const TitleDetail({Key? key, required this.title, required this.detail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.montserrat(
                fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(detail, style: GoogleFonts.montserrat(fontSize: 12))
        ],
      ),
    );
  }
}
