import 'package:flutter/material.dart';

class BBooking extends StatefulWidget {
  @override
  _BBookingState createState() => _BBookingState();
}

class _BBookingState extends State<BBooking> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime; // New variable for selected time

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );

    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF542D2D),
      appBar: AppBar(
        title: Text('Book Appointment'),
        backgroundColor: Color(0xFF331B1B),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFE3C5AD), // Set the background color to white
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Date and Time:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  child: Text('Select Date'),
                ),
                ElevatedButton(
                  onPressed: () => _selectTime(context),
                  child: Text('Select Time'),
                ),
              ],
            ),
            SizedBox(height: 20),
            if (_selectedDate != null && _selectedTime != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Booking Summary:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Date: ${_selectedDate!.toLocal().toString().split(' ')[0]}',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Time: ${_selectedTime!.format(context)}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            SizedBox(height: 20),
            // Add more details or input fields as needed
            TextField(
              decoration: InputDecoration(
                labelText: 'Your Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Contact Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            if (_selectedDate != null && _selectedTime != null)
              ElevatedButton(
                onPressed: () {
                  // Add logic to confirm the booking and navigate to the next screen
                  // For example, you can show a dialog or navigate to a confirmation page
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ConfirmationPage(selectedDate: _selectedDate!, selectedTime: _selectedTime!),
                  //   ),
                  // );
                },
                child: Text('Confirm Booking'),
              ),
          ],
        ),
      ),
    );
  }
}
