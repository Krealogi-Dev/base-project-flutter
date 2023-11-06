import 'package:core/local/database/database_module.dart';
import 'package:core/local/database/table/table.dart';
import 'package:dependencies/drift/drift.dart';

part 'user_dao.g.dart';

@DriftAccessor(tables: [UserTable])
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin {
  UserDao(AppDatabase db) : super(db);

  Future<void> saveUser(UserTableCompanion data) => into(userTable).insert(
        data,
        mode: InsertMode.insertOrReplace,
      );

  Future<UserTableData> getUser() => select(userTable).getSingle();
}
