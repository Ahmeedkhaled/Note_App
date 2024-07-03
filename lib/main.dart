import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project_local_storage/core/constant.dart';
import 'package:project_local_storage/core/routes_name.dart';
import 'package:project_local_storage/core/theme.dart';
import 'package:project_local_storage/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:project_local_storage/model/note_model.dart';
import 'package:project_local_storage/simple_bloc_observer.dart';
import 'package:project_local_storage/view/screens/notes_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkMode,
        initialRoute: RoutesName.notesView,
        routes: {
          RoutesName.notesView: (context) => const NotesView(),
        },
      ),
    );
  }
}
