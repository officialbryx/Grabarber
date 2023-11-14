import 'package:flutter/material.dart';
import 'BProfile.dart';
import 'BProfile1.dart';
import 'BProfile2.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // Create a GlobalKey for the Scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the key to the Scaffold
      appBar: AppBar(
        backgroundColor: Color(0xFF331B1B),
        title: Image.asset(
          'assets/images/GRABARBERWHITE.png',
          height: 40,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            // Open the drawer when the menu icon is clicked
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF331B1B),
              ),
              child: Text(
                'User',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Handle profile feature
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Handle settings feature
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                // Handle logout feature
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Scrollbar(
          isAlwaysShown: true,
          child: SingleChildScrollView(
            child: Container(
              width: 391,
              height: 705,
              decoration: BoxDecoration(
                color: Color(0xFF542D2D),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                        child: Text(
                          'Choose a barber:',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Container(
                      width: 410,
                      height: 185,
                      decoration: BoxDecoration(
                        color: Color(0xFFE3C5AD),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(360),
                              child: Image.network(
                                'https://hips.hearstapps.com/hmg-prod/images/index-hartmod-1544461814.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*',
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    'Kevin Durant',
                                    style: TextStyle(
                                      fontSize:
                                          18, // Adjust the font size as needed
                                      fontWeight: FontWeight
                                          .bold, // Add font weight (e.g., bold)
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        'https://icons.veryicon.com/png/o/business/classic-icon/location-56.png',
                                        width: 20,
                                        height: 19,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'Project 8, Quezon City',
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Rating:',
                                      ),
                                      SizedBox(
                                          width:
                                              4), // Add some space between the text and the stars
                                      Row(
                                        children: List.generate(
                                          4,
                                          (index) => Icon(
                                            Icons.star,
                                            size:
                                                16, // Adjust the size of the star icon as needed
                                            color: Colors
                                                .orange, // Change the color to orange
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                          width:
                                              4), // Add some space between the stars and the count
                                      Text(
                                        '(35)',
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Services Offered:',
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/0/14.png',
                                          width: 5,
                                          height: 5,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Text(
                                        'Men\'s Haircut',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/0/14.png',
                                          width: 5,
                                          height: 5,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Text(
                                        'Styling',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/0/14.png',
                                          width: 5,
                                          height: 5,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Text(
                                        'Hair Bleaching',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          75, 2, 0, 0),
                                      child: OutlinedButton(
                                        onPressed: () {
                                          // Navigate to the next page when the button is pressed
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    BProfile()),
                                          );
                                        },
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          side: BorderSide(
                                            color: Colors.blue,
                                            width: 1,
                                          ),
                                          backgroundColor: Colors.blue,
                                        ),
                                        child: Text(
                                          'See More...',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                    child: Container(
                      width: 410,
                      height: 185,
                      decoration: BoxDecoration(
                        color: Color(0xFFE3C5AD),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
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
                          Expanded(
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    'Taylor Sheesh',
                                    style: TextStyle(
                                      fontSize:
                                          18, // Adjust the font size as needed
                                      fontWeight: FontWeight
                                          .bold, // Add font weight (e.g., bold)
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        'https://icons.veryicon.com/png/o/business/classic-icon/location-56.png',
                                        width: 20,
                                        height: 19,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Text(
                                      'Cubao, Quezon City',
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Rating:',
                                      ),
                                      SizedBox(
                                          width:
                                              4), // Add some space between the text and the stars
                                      Row(
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
                                      SizedBox(
                                          width:
                                              4), // Add some space between the stars and the count
                                      Text(
                                        '(332)',
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  'Services Offered:',
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/0/14.png',
                                          width: 5,
                                          height: 5,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Text(
                                        'Women\'s Haircut',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/0/14.png',
                                          width: 5,
                                          height: 5,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Text(
                                        'Hair Dyeing',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/0/14.png',
                                          width: 5,
                                          height: 5,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Text(
                                        'Hair Rebonding',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          75, 2, 0, 0),
                                      child: OutlinedButton(
                                        onPressed: () {
                                          // Navigate to the next page when the button is pressed
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    BProfile1()),
                                          );
                                        },
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          side: BorderSide(
                                            color: Colors.blue,
                                            width: 1,
                                          ),
                                          backgroundColor: Colors.blue,
                                        ),
                                        child: Text(
                                          'See More...',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                    child: Container(
                      width: 410,
                      height: 185,
                      decoration: BoxDecoration(
                        color: Color(0xFFE3C5AD),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(360),
                              child: Image.network(
                                'https://verafiles.org/wp-content/uploads/2015/05/Dingdong-Dantes.jpg',
                                width: 150,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      'Nathan Cruz',
                                      style: TextStyle(
                                        fontSize:
                                            18, // Adjust the font size as needed
                                        fontWeight: FontWeight
                                            .bold, // Add font weight (e.g., bold)
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.network(
                                          'https://icons.veryicon.com/png/o/business/classic-icon/location-56.png',
                                          width: 20,
                                          height: 19,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Project 4, Quezon City',
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Rating:',
                                        ),
                                        SizedBox(
                                            width:
                                                4), // Add some space between the text and the stars
                                        Row(
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
                                        SizedBox(
                                            width:
                                                4), // Add some space between the stars and the count
                                        Text(
                                          '(271)',
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Services Offered:',
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'https://cdn-icons-png.flaticon.com/512/0/14.png',
                                            width: 5,
                                            height: 5,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Text(
                                          'Men\'s Haircut',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'https://cdn-icons-png.flaticon.com/512/0/14.png',
                                            width: 5,
                                            height: 5,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Text(
                                          'Beard Shaving',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.network(
                                            'https://cdn-icons-png.flaticon.com/512/0/14.png',
                                            width: 5,
                                            height: 5,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 0, 0),
                                        child: Text(
                                          'Braids',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            75, 2, 0, 0),
                                        child: OutlinedButton(
                                          onPressed: () {
                                            // Navigate to the next page when the button is pressed
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      BProfile2()),
                                            );
                                          },
                                          style: OutlinedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            side: BorderSide(
                                              color: Colors.blue,
                                              width: 1,
                                            ),
                                            backgroundColor: Colors.blue,
                                          ),
                                          child: Text(
                                            'See More...',
                                            style: TextStyle(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
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
      ),
    );
  }
}
