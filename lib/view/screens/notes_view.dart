import 'package:flutter/material.dart';
import 'package:project_local_storage/view/widgets/add_note_bottom_sheet.dart';
import 'package:project_local_storage/view/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        shape: const CircleBorder(
            side: BorderSide(width: 0, color: Colors.blueAccent)),
        onPressed: () {
          showBottomSheet(context);
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 25,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        child: NotesViewBody(),
      ),
    );
  }
  void showBottomSheet(BuildContext context) {
     showModalBottomSheet(context: context, builder: (context){
      return const AddNoteBottomSheet();
    });
  }
}
