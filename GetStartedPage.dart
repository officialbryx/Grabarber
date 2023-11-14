import 'package:flutter/material.dart';
import 'BSelection.dart';

class GetStartedPage extends StatefulWidget {
  @override
  _GetStartedPage createState() => _GetStartedPage();
}

class _GetStartedPage extends State<GetStartedPage> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF331B1B),
      appBar: AppBar(
        backgroundColor: Color(0xFF542D2D),
        title: Text(
          "Getting Started",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back, // Change the icon to a back button
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            // Navigate back to the home page
            Navigator.pop(context);
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                "Welcome, User!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: 300.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement Set up profile functionality
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(double.infinity, 60),
                    ),
                    child: Text(
                      "Set up Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: 300.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the next page when the button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BSelection()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(double.infinity, 60),
                    ),
                    child: Text(
                      "Book a Barber",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: 300.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement FAQ functionality
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(double.infinity, 60),
                    ),
                    child: Text(
                      "FAQ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: 300.0,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement Learn More functionality
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(double.infinity, 60),
                    ),
                    child: Text(
                      "Learn More",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
