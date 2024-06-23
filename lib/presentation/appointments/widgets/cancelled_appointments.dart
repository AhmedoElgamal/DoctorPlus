import 'package:doctor_plus/domain/cubits/appointments/cancelled_appointments_cubit.dart';
import 'package:doctor_plus/presentation/appointments/widgets/appointments_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CancelledAppointments extends StatelessWidget {
  const CancelledAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CancelledAppointmentsCubit, CancelledAppointmentsState>(
      builder: (context, state) {
        if (state is CancelledAppointmentsLoaded) {
          return AppointmentsListView(appointments: state.appointments);
        } else if (state is CancelledAppointmentsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return const Center(
            child: Text("Errorr loading appointments"),
          );
        }
      },
    );
  }
}