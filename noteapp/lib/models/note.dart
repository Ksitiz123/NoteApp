import 'package:isar/isar.dart';

// this line is needed to generate file
part 'note.g.dart';

@Collection()
class Note {
  Id id = Isar.autoIncrement;
  late String text;
}