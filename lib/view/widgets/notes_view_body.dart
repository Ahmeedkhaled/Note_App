import 'package:flutter/material.dart';
import 'package:project_local_storage/view/widgets/custom_app_bar.dart';
import 'package:project_local_storage/view/widgets/notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
