import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project_local_storage/core/constant.dart';
import 'package:project_local_storage/core/routes_name.dart';
import 'package:project_local_storage/core/theme.dart';
import 'package:project_local_storage/view/screens/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await  Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkMode,
      initialRoute: RoutesName.notesView,
      routes: {
        RoutesName.notesView: (context) => const NotesView(),
      },
    );
  }
}
