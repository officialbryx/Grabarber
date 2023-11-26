import 'package:flutter/material.dart';
import 'BReview.dart';

class HistoryTab extends StatefulWidget {
  @override
  _HistoryTabState createState() => _HistoryTabState();
}

class _HistoryTabState extends State<HistoryTab> {
  bool feedbackSubmitted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grabarber'),
        backgroundColor: Color(0xFF212121),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: 10.0,
          left: 30.0,
          right: 10.0,
        ),
        child: Column(
          children: [
            Container(
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xFF212121),
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(75),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT09K5SeZzDHyVBMJvl_SUYVLIdoej609EkqoP6TyT6j2CC4WTSRImm3d_afsHpQibk3uY&usqp=CAU',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Kurt Cobain',
                    style: TextStyle(
                      color: Color(0xFFE0E0E0),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      if (!feedbackSubmitted) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReviewPage(
                              onFeedbackSubmitted: (bool submitted) {
                                setState(() {
                                  feedbackSubmitted = submitted;
                                });
                              },
                            ),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFD700),
                      onPrimary: Color(0xFF212121),
                    ),
                    child: Text(
                      feedbackSubmitted ? 'Reviewed' : 'Pending Review',
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
          ],
        ),
      ),
    );
  }
}
