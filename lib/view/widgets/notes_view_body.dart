import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_local_storage/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:project_local_storage/view/widgets/custom_app_bar.dart';
import 'package:project_local_storage/view/widgets/notes_listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const CustomAppBar(
          title: "Notes",
          icon: Icons.search,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        const Expanded(child: NotesListView()),
      ],
    ));
  }
}
