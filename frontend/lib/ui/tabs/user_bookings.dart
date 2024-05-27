import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/models/events.dart';
import 'package:intl/intl.dart';

import '../../bloc/auth/auth_bloc.dart';

import '../../bloc/court_booking/court_booking_bloc.dart';
import '../../bloc/court_booking/court_booking_state.dart';
import '../common.dart';

class UserBookings extends StatelessWidget {
  const UserBookings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final courtBookingBloc = BlocProvider.of<CourtBookingBloc>(context);
    courtBookingBloc.fetchUserBookings(context.read<AuthBloc>().state.userId);

    final theme = Theme.of(context);

    return ErrorMessageWrapper(
        child: Scaffold(
      body: BlocBuilder<CourtBookingBloc, CourtBookingState>(
        builder: (context, state) {
          if (state.userBookings.isEmpty) {
            return const Center(child: Text('No user bookings found.'));
          } else {
            return ListView.builder(
              padding: EdgeInsets.only(top: 16),
              itemCount: state.userBookings.length,
              itemBuilder: (context, index) {
                final booking = state.userBookings[index];
                return Card(
                  color: theme.colorScheme.primaryContainer,
                  child: ListTile(
                    title: Text(
                        '${DateFormat('dd/MM/yy').format(booking.selectedDate)} - Court ${booking.courtNumber}',
                        style: TextStyle(color: theme.colorScheme.onPrimary)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            '${booking.startTime.substring(0, 5)} - ${booking.endTime.substring(0, 5)}',
                    style: TextStyle(color: theme.colorScheme.onPrimary)),
                        Text(
                            'Created: ${DateFormat('dd/MM/yy hh:mm a').format(booking.creationTime)}',
                style: TextStyle(color: theme.colorScheme.onPrimary),),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      color: theme.colorScheme.onPrimary,
                      onPressed: () {
                        _deleteBooking(context, booking.bookingId);
                      },
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    ),);
  }
}

void _deleteBooking(BuildContext context, int bookingId) {
  final courtBookingBloc = BlocProvider.of<CourtBookingBloc>(context);
  courtBookingBloc.deleteBooking(bookingId);
  //courtBookingBloc.fetchUserBookings(context.read<AuthBloc>().state.userId);

}
