import 'package:dependencies/drift/drift.dart';

class UserTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get idUser => text().unique()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  BoolColumn get banned => boolean()();
  BoolColumn get active => boolean()();
  BoolColumn get verified => boolean()();
  TextColumn get role => text()();
  IntColumn get discount => integer()();
}
