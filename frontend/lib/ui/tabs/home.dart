
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../bloc/court_availability/court_availability_bloc.dart';
import '../../bloc/court_availability/court_availability_state.dart';
import '../../models/entities.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book a Court'),
      ),
      body: BlocBuilder<CourtAvailabilityBloc, CourtAvailabilityState>(
        builder: (context, state) {

          return Column(
            children: [
              TextButton.icon(
                onPressed: () => _selectDate(context),
                icon: const Icon(Icons.calendar_today),
                label: Text('Select Date: ${DateFormat('dd/MM/yy').format(selectedDate)}'),
              ),
              Expanded(
                child: state.courtAvailability.isNotEmpty
                    ? _buildCourtAvailabilityList(state.courtAvailability)
                    : const Center(child: Text('No court availability.')),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCourtAvailabilityList(List<CourtAvailability> availability) {
    if (availability.isEmpty) {
      return const Center(child: Text('No court availability.'));
    }

    // Group court availability by court number
    Map<int, List<CourtAvailability>> groupedAvailability = {};
    for (var courtData in availability) {
      groupedAvailability.putIfAbsent(courtData.courtNumber, () => []).add(courtData);
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: groupedAvailability.entries.map((entry) {
          int? courtNumber = entry.key;
          List<CourtAvailability> courtDataList = entry.value;

          if (courtNumber == null || courtDataList.isEmpty) {
            return const SizedBox();
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  'Court $courtNumber',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: courtDataList.map((courtData) {

                  return Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      '${(courtData.startTime)} - ${(courtData.endTime)}',
                      style: const TextStyle(fontSize: 14),
                    ),
                  );
                }).toList(),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

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
        print('Selected date: $selectedDate');
        context.read<CourtAvailabilityBloc>().fetchCourtAvailability(selectedDate);
      });
    }
  }
}

