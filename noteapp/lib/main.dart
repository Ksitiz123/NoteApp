import 'package:flutter/material.dart';
import 'package:noteapp/models/note_database.dart';
import 'package:noteapp/pages/notes_page.dart';
import 'package:provider/provider.dart';

void main() async {

  // initialize note isar database
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize();
  
  runApp(
       ChangeNotifierProvider(
        create: (context) => NoteDatabase(),
        child: const MyApp(),
       ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesPage(),
 
    );
  }
}