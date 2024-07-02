import 'package:flutter/material.dart';
import 'package:project_local_storage/view/widgets/custom_button_note.dart';
import 'package:project_local_storage/view/widgets/custom_text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: [
          SizedBox(
            height: 36,
          ),
          CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'content',
            maxLines: 5,
          ),
          SizedBox(
            height: 35,
          ),
          CustomButtonNote(),
          SizedBox(
            height: 26,
          ),
        ],
      ),
    );
  }
}
