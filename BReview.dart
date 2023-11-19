import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grabarber Review',
      theme: ThemeData(
        // Use Roboto font for the entire app
        textTheme: TextTheme(
          bodyText1: TextStyle(fontFamily: 'Roboto'),
          bodyText2: TextStyle(fontFamily: 'Roboto'),
          headline6: TextStyle(fontFamily: 'Roboto'),
        ),
      ),
      home: ReviewPage(),
    );
  }
}

class ReviewPage extends StatefulWidget {
  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  double _rating = 0;
  TextEditingController _feedbackController = TextEditingController();

  void _submitFeedback() {
    // Save feedback and rating (You can replace this with your own logic)
    String feedback = _feedbackController.text;
    // Perform any necessary operations with the feedback and rating

    // Show a confirmation dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Feedback Submitted'),
          content: Text('Thank you for your feedback!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0E0E0),
      appBar: AppBar(
        title: Text('Grabarber'),
        backgroundColor: Color(0xFF212121), // Set the app bar color here
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu button press
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // "Leave a Review" Text
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Leave a Review',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),

            SizedBox(height: 10.0),

            // Barber Face Image (Replace the placeholder URL)
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  75), // 75 is half of the width and height
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT09K5SeZzDHyVBMJvl_SUYVLIdoej609EkqoP6TyT6j2CC4WTSRImm3d_afsHpQibk3uY&usqp=CAU',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10.0),

            // Name Text
            Text(
              'Kurt Cobain',
              style: TextStyle(
                color: Colors.black, // Set text color
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),

            // Star Rating
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    index + 1 <= _rating.ceil()
                        ? Icons.star
                        : Icons.star_border,
                    color: Colors.amber,
                    size: 36.0, // Set the size of the star icons
                  ),
                  onPressed: () {
                    setState(() {
                      _rating = index + 1.0;
                    });
                  },
                );
              }),
            ),

            SizedBox(height: 20.0),

            // Feedback Text Field
            TextField(
              controller: _feedbackController,
              style: TextStyle(color: Colors.black), // Set text color to black
              decoration: InputDecoration(
                hintText: 'Write your feedback...',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white, // Set background color to white
              ),
              maxLines: 5,
              maxLength: 100, // Set the character limit
            ),

            SizedBox(height: 20.0),

            // Submit Feedback Button
            ElevatedButton(
              onPressed: () {
                _submitFeedback();
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFFD700), // Set button color to gold
                minimumSize: Size(180, 60), // Set button size
              ),
              child: Text(
                'Submit Feedback',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF212121),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
