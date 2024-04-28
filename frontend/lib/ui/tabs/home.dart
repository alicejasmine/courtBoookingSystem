
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../bloc/booking_bloc.dart';
import '../../models/events.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  DateTime selectedDate = DateTime.now();

  
  final Map<String, List<String>> courtTimeSlots = {
    'Court 1': ['8:00 AM - 9:00 AM', '9:00 AM - 10:00 AM'],
    'Court 2': ['10:00 AM - 11:00 AM', '11:00 AM - 12:00 PM'],
  };

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 7)),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        context.read<BookingBloc>().add(
          ClientWantsToFetchCourtAvailability(selectedDate: selectedDate, eventType: 'ClientWantsToFetchCourtAvailability'),
        );

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book a Court'),
      ),
      body: Column(
        children: [
          TextButton.icon(
            onPressed: () => _selectDate(context),
            icon: const Icon(Icons.calendar_today),
            label: Text('Select Date: ${DateFormat('dd/MM/yy').format(selectedDate)}'),
          ),
          Expanded(
            child: GridView.count(
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 2,
              children: [
                for (var court in courtTimeSlots.keys) 
                  Column(
                    children: [
                      Text(
                        court,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      for (var timeSlot in courtTimeSlots[court]!) 
                        Container(
                          color: Colors.blue,
                          alignment: Alignment.center,
                          child: Text(
                            timeSlot,
                            style: const TextStyle(fontSize: 12),
                          ),
                          height: 40,
                        ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}