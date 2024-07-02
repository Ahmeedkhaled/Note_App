import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_local_storage/view/widgets/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCCB0),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 18),
                child: Text("Build your career with ahmed khaled",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 18)),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.trash,
                      color: Colors.black, size: 24)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 33.0),
              child: Text("24Jun,2024",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
