import 'package:flutter/material.dart';
import 'GetStartedPage.dart';
import 'PopularB.dart';
import 'TrendingH.dart';

class Homepage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFF331B1B),
      appBar: AppBar(
        backgroundColor: Color(0xFF542D2D),
        title: Image.asset(
          "assets/GRABARBERWHITE.png",
          height: 20,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
              onPressed: () {
                // Handle search feature
                // You can navigate to the search page or implement your logic here
              },
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Image.network(
                "https://i.imgur.com/xpiswhK.png",
                width: 300.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center the children horizontally
              children: <Widget>[
                Text(
                  "Welcome to Grabarber!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 300.0, // Set width to 300 pixels
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GetStartedPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize:
                        Size(double.infinity, 60), // Increased button height
                  ),
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20, // Increased font size
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 300.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PopularB(), // Navigate to Popular Barbers page
                      ),
                    );
                    // Handle the action for Popular Barbers button
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize:
                        Size(double.infinity, 60), // Increased button height
                  ),
                  child: Text(
                    "Popular Barbers",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20, // Increased font size
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 300.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            TrendingH(), // Navigate to Popular Barbers page
                      ),
                    );
                    // Handle the action for Trending Hairstyles button
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize:
                        Size(double.infinity, 60), // Increased button height
                  ),
                  child: Text(
                    "Trending Hairstyles",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20, // Increased font size
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
