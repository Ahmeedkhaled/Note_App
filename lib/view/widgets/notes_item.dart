import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_local_storage/core/flutter_toast.dart';
import 'package:project_local_storage/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:project_local_storage/model/note_model.dart';
import 'package:project_local_storage/view/widgets/edit_note_view.dart';

class NoteItem extends StatefulWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  // ignore: library_private_types_in_public_api
  _NoteItemState createState() => _NoteItemState();
}

class _NoteItemState extends State<NoteItem> {
  bool _isDeleted = false;

  void _deleteNote() {
    setState(() {
      _isDeleted = true;
    });

    Future.delayed(const Duration(milliseconds: 300), () {
      widget.note.delete();
      ToastFlutter.flutterToast();
      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: _isDeleted ? 0.0 : 1.0,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return EditNoteView(
                note: widget.note,
              );
            }),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(widget.note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  widget.note.title,
                  style: const TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    widget.note.subTitle,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black.withOpacity(.4),
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: _deleteNote,
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  widget.note.date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
