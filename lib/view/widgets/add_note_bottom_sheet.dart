import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_local_storage/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:project_local_storage/view/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, NoteCubitState>(
        listener: (context, state) {
          if (state is NoteCubitFailure) {
            print("Failuer ${state.errorMessage}");
          }
          if (state is NoteCubitSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is NoteCubitLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
