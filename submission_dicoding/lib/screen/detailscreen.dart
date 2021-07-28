import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:submission_dicoding/model/starbucks.dart';

class DetailScreen extends StatelessWidget {
  final Starbucks menu;

  const DetailScreen({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(menu: menu);
        } else {
          return DetailMobilePage(menu: menu);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final Starbucks menu;

  DetailMobilePage({required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.asset(menu.imageAsset),
                SafeArea(
                    child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back)),
                      )
                    ],
                  ),
                ))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Text(
                menu.name,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  menu.categories,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(),
                )),
            Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tall: Rp.${menu.price[0]}',
                      style: GoogleFonts.montserrat(),
                    ),
                    Text('Grande: Rp.${menu.price[1]}',
                        style: GoogleFonts.montserrat()),
                    Text('Venti: Rp.${menu.price[2]}',
                        style: GoogleFonts.montserrat())
                  ],
                )),
            Container(
                padding: EdgeInsets.all(30),
                child: Text(
                  menu.description,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(),
                ))
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final Starbucks menu;

  DetailWebPage({required this.menu});

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Starbucks Menu',
                  style: GoogleFonts.montserrat(
                      fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.menu.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  widget.menu.name,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    fontSize: 32.0,
                                  ),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text(
                                      "Tall : Rp ${widget.menu.price[0]}",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Text(
                                      "Grande : Rp ${widget.menu.price[1]}",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    Text(
                                      "Venti : Rp ${widget.menu.price[2]}",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.menu.description,
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.montserrat(fontSize: 16.0),
                                ),
                              ),
                            ],
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
      ),
    );
  }
}
