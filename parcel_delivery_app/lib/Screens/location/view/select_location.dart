import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SelectLocation extends StatelessWidget {
  final Icon icon = Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select Location',
          style: GoogleFonts.getFont(
            'Roboto Condensed',
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: 'Start Typing to Search...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: 18),
              width: double.maxFinite,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    alignment: Alignment.bottomCenter,
                    'assets/icons/current_location.png',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 15),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Use current location'),
                        SizedBox(height: 1),
                        Text('G-35442, MadhavPura, VishalaPur, Morbi'),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.black,
                ),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFDADADA5C).withOpacity(0.1),
                  enabledBorder: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.add, color: Colors.grey),
                  hintText: 'Add Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            _saveAddressColumn(),
          ],
        ),
      ),
    );
  }
  Widget _saveAddressColumn(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Colors.black,
        child: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(right: 6),
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 28),
                child: Text(
                  'Saved addresses',
                  style: GoogleFonts.getFont(
                    'Roboto Condensed',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 18),
                width: double.maxFinite,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      alignment: Alignment.bottomCenter,
                      'assets/icons/home.png',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Home',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 1),
                              Text(
                                'G-35442, MadhavPura, VishalaPur, Morbi',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 18),
                width: double.maxFinite,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      alignment: Alignment.bottomCenter,
                      'assets/icons/home.png',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Home',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 1),
                              Text(
                                'G-35442, MadhavPura, VishalaPur, Morbi',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 18),
                width: double.maxFinite,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      alignment: Alignment.bottomCenter,
                      'assets/icons/home.png',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Home',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 1),
                              Text(
                                'G-35442, MadhavPura, VishalaPur, Morbi',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
