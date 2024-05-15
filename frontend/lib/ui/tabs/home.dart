
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../bloc/court_availability/court_availability_bloc.dart';
import '../../bloc/court_availability/court_availability_state.dart';
import '../../bloc/court_booking/court_booking_bloc.dart';
import '../../bloc/court_booking/court_booking_state.dart';
import '../../models/entities.dart';
import '../../models/events.dart';
import '../common.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  CourtAvailability? selectedSlot;

  @override
  void initState() {
    super.initState();
    context.read<CourtAvailabilityBloc>().fetchCourtAvailability();
  }

  @override
  Widget build(BuildContext context) {
    return ErrorMessageWrapper(
        child: Scaffold(
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
                label: Text('Select Date: ${DateFormat('dd/MM/yy').format(state.selectedDate)}'),
              ),
              Expanded(
                child: state.courtAvailability.isNotEmpty
                    ? _buildCourtAvailabilityList(state.courtAvailability)
                    : const Center(child: Text('No court availability.')),
              ),
              BlocBuilder<CourtBookingBloc, CourtBookingState>(
                builder: (context, bookingState) {
                  if (bookingState.confirmationMessage =="Booking successful") {
                    context.read<CourtAvailabilityBloc>().fetchCourtAvailability();
                    return Text(bookingState.confirmationMessage!);
                  } else {
                    return Container();
                  }
                },
              ),
            ],
          );
        },
      ),
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
                  bool isSelected = selectedSlot == courtData;
                  return Column(
                    children: [ GestureDetector(
                  onTap: () => _selectSlot(courtData),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepOrange),
                  color: isSelected ? Colors.amber : Colors.transparent,
                    ),
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      '${(courtData.startTime.substring(0,5))} - ${(courtData.endTime.substring(0,5))}',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                  ),
                  if (isSelected)
                  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                  onPressed: () {

                  _bookCourt(context,courtData);
                  },
                  child: Text('Book'),
                  ),
                  ),
                  ],
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
    final selectedDate = context.read<CourtAvailabilityBloc>().state.selectedDate;
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 7)),
    );
    if (!context.mounted) return;
    if (pickedDate != null && pickedDate != selectedDate) {
      context.read<CourtAvailabilityBloc>().add(ChangeSelectedDataEvent(pickedDate));
    }
  }



  void _selectSlot(CourtAvailability slot) {
    setState(() {
      selectedSlot = slot;
    });
  }


  void _bookCourt(BuildContext context, CourtAvailability courtData) {
    final courtBookingBloc = context.read<CourtBookingBloc>();
    final authState = context.read<AuthBloc>().state;
    final selectedDate = context.read<CourtAvailabilityBloc>().state.selectedDate;


    final event = ClientWantsToBookCourt(
      eventType: ClientWantsToBookCourt.name,
      courtId: courtData.courtId,
      userId: authState.userId,
      selectedDate: selectedDate,
      startTime: courtData.startTime,
      endTime:courtData.endTime,
      creationTime:DateTime.now()
    );
    courtBookingBloc.add(event);
  }
}

