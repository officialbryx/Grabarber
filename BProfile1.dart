import 'package:flutter/material.dart';
import 'main.dart';

class BProfile1 extends StatefulWidget {
  @override
  _BProfile1 createState() => _BProfile1();
}

class _BProfile1 extends State<BProfile1> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF331B1B),
        appBar: AppBar(
          backgroundColor: Color(0xFF542D2D),
          title: const Text("GraBarber"),
          leading: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                      child: IconButton(
                        onPressed: () {
                          // Navigate to the previous page when the button is pressed
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 0),
                      child: Row(
                        children: [
                          Text(
                            isLiked ? 'Added To Favorites' : 'Add To Favorites',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isLiked = !isLiked;
                                });
                              },
                              child: Icon(
                                Icons.favorite,
                                color:
                                    isLiked ? Color(0xFFFF0010) : Colors.grey,
                                size: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(360),
                    child: Image.network(
                      'https://flxt.tmsimg.com/assets/516020_v9_bc.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Text(
                    'Taylor Sheesh',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24, // Adjust the font size as needed
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 0),
                  child: Container(
                    width: 370,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Color(0xFFE3C5AD),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.00, -1.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 0, 0),
                                child: Text(
                                  'Services Offered:',
                                  style: TextStyle(
                                    fontSize:
                                        16, // Adjust the font size as needed
                                    fontWeight: FontWeight
                                        .bold, // Add font weight (e.g., bold)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'Men\'s Haircut, Styling, Hair Bleaching',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.00, -1.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                                child: Text(
                                  'Working Hours:',
                                  style: TextStyle(
                                    fontSize:
                                        16, // Adjust the font size as needed
                                    fontWeight: FontWeight
                                        .bold, // Add font weight (e.g., bold)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                'Monday - Friday, 8:00 AM - 5:00 PM',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.00, -1.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                                child: Text(
                                  'Rating:',
                                  style: TextStyle(
                                    fontSize:
                                        16, // Adjust the font size as needed
                                    fontWeight: FontWeight
                                        .bold, // Add font weight (e.g., bold)
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                              child: Row(
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, -1.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: Row(
                                        children: List.generate(
                                          5,
                                          (index) => Icon(
                                            Icons.star,
                                            size:
                                                16, // Adjust the size of the star icon as needed
                                            color: Colors
                                                .orange, // Change the color to orange
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, -1.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: Text(
                                        '(332)',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.00, -1.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                                child: Text(
                                  'Contact Info:',
                                  style: TextStyle(
                                    fontSize:
                                        16, // Adjust the font size as needed
                                    fontWeight: FontWeight
                                        .bold, // Add font weight (e.g., bold)
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 7, 0, 0),
                              child: Text(
                                '09234758371',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.00, -1.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                                child: Text(
                                  'Pricing:',
                                  style: TextStyle(
                                    fontSize:
                                        16, // Adjust the font size as needed
                                    fontWeight: FontWeight
                                        .bold, // Add font weight (e.g., bold)
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 7, 0, 0),
                              child: Text(
                                '₱200.00 - ₱500.00',
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle the logic for booking an appointment
                              print('Book Appointment button pressed...');
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Container(
                              width: 200, // Set the desired width
                              child: Center(
                                child: Text('Book Appointment'),
                              ),
                            ),
                          ),
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
    );
  }
}
