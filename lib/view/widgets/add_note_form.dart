import 'package:flutter/material.dart';
import 'package:project_local_storage/view/widgets/custom_button_note.dart';
import 'package:project_local_storage/view/widgets/custom_text_feild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          const CustomTextField(
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextField(
            hintText: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 35,
          ),
          CustomButtonNote(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 26,
          ),
        ],
      ),
    );
  }
}
