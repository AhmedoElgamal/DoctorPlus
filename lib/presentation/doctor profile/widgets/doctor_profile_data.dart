import 'package:doctor_plus/data/model/doctor.dart';
import 'package:doctor_plus/domain/cubits/preferedDoctors/prefered_doctors_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorProfileData extends StatelessWidget {
  final Doctor doctor;

  const DoctorProfileData({
    super.key,
    required this.doctor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 36,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2023/11/11/15/03/ai-generated-8381346_1280.jpg'),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${doctor.fName}  ${doctor.lName}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      BlocBuilder<PreferedDoctorsCubit, PreferedDoctorsState>(
                        builder: (context, state) {
                          if (state is PreferedDoctorByIdLoaded) {
                            return IconButton(
                              icon: const Icon(Icons.favorite),
                              color: state.preferedDoctor == null
                                  ? Colors.grey
                                  : Colors.blue,
                              onPressed: () {
                                if (state.preferedDoctor == null) {
                                  context
                                      .read<PreferedDoctorsCubit>()
                                      .addPreferedDoctorToPatient(
                                          doctor: doctor, patientId: '123');
                                } else {
                                  context
                                      .read<PreferedDoctorsCubit>()
                                      .removePreferedDoctorFromPatient(
                                          doctorId: doctor.id,
                                          patientId: '123');
                                }
                              },
                            );
                          } else {
                            return const CircularProgressIndicator();
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    doctor.specialty,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        '${doctor.getRating()} (${doctor.reviews.length} reviews)',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ],
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