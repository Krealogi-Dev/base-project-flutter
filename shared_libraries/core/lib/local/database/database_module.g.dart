// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_module.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class UserTableData extends DataClass implements Insertable<UserTableData> {
  final int id;
  final String idUser;
  final String name;
  final String email;
  final bool banned;
  final bool active;
  final bool verified;
  final String role;
  final int discount;
  UserTableData(
      {required this.id,
      required this.idUser,
      required this.name,
      required this.email,
      required this.banned,
      required this.active,
      required this.verified,
      required this.role,
      required this.discount});
  factory UserTableData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserTableData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      idUser: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_user'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email'])!,
      banned: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}banned'])!,
      active: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}active'])!,
      verified: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}verified'])!,
      role: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}role'])!,
      discount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}discount'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_user'] = Variable<String>(idUser);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['banned'] = Variable<bool>(banned);
    map['active'] = Variable<bool>(active);
    map['verified'] = Variable<bool>(verified);
    map['role'] = Variable<String>(role);
    map['discount'] = Variable<int>(discount);
    return map;
  }

  UserTableCompanion toCompanion(bool nullToAbsent) {
    return UserTableCompanion(
      id: Value(id),
      idUser: Value(idUser),
      name: Value(name),
      email: Value(email),
      banned: Value(banned),
      active: Value(active),
      verified: Value(verified),
      role: Value(role),
      discount: Value(discount),
    );
  }

  factory UserTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserTableData(
      id: serializer.fromJson<int>(json['id']),
      idUser: serializer.fromJson<String>(json['idUser']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      banned: serializer.fromJson<bool>(json['banned']),
      active: serializer.fromJson<bool>(json['active']),
      verified: serializer.fromJson<bool>(json['verified']),
      role: serializer.fromJson<String>(json['role']),
      discount: serializer.fromJson<int>(json['discount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idUser': serializer.toJson<String>(idUser),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'banned': serializer.toJson<bool>(banned),
      'active': serializer.toJson<bool>(active),
      'verified': serializer.toJson<bool>(verified),
      'role': serializer.toJson<String>(role),
      'discount': serializer.toJson<int>(discount),
    };
  }

  UserTableData copyWith(
          {int? id,
          String? idUser,
          String? name,
          String? email,
          bool? banned,
          bool? active,
          bool? verified,
          String? role,
          int? discount}) =>
      UserTableData(
        id: id ?? this.id,
        idUser: idUser ?? this.idUser,
        name: name ?? this.name,
        email: email ?? this.email,
        banned: banned ?? this.banned,
        active: active ?? this.active,
        verified: verified ?? this.verified,
        role: role ?? this.role,
        discount: discount ?? this.discount,
      );
  @override
  String toString() {
    return (StringBuffer('UserTableData(')
          ..write('id: $id, ')
          ..write('idUser: $idUser, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('banned: $banned, ')
          ..write('active: $active, ')
          ..write('verified: $verified, ')
          ..write('role: $role, ')
          ..write('discount: $discount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, idUser, name, email, banned, active, verified, role, discount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserTableData &&
          other.id == this.id &&
          other.idUser == this.idUser &&
          other.name == this.name &&
          other.email == this.email &&
          other.banned == this.banned &&
          other.active == this.active &&
          other.verified == this.verified &&
          other.role == this.role &&
          other.discount == this.discount);
}

class UserTableCompanion extends UpdateCompanion<UserTableData> {
  final Value<int> id;
  final Value<String> idUser;
  final Value<String> name;
  final Value<String> email;
  final Value<bool> banned;
  final Value<bool> active;
  final Value<bool> verified;
  final Value<String> role;
  final Value<int> discount;
  const UserTableCompanion({
    this.id = const Value.absent(),
    this.idUser = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.banned = const Value.absent(),
    this.active = const Value.absent(),
    this.verified = const Value.absent(),
    this.role = const Value.absent(),
    this.discount = const Value.absent(),
  });
  UserTableCompanion.insert({
    this.id = const Value.absent(),
    required String idUser,
    required String name,
    required String email,
    required bool banned,
    required bool active,
    required bool verified,
    required String role,
    required int discount,
  })  : idUser = Value(idUser),
        name = Value(name),
        email = Value(email),
        banned = Value(banned),
        active = Value(active),
        verified = Value(verified),
        role = Value(role),
        discount = Value(discount);
  static Insertable<UserTableData> custom({
    Expression<int>? id,
    Expression<String>? idUser,
    Expression<String>? name,
    Expression<String>? email,
    Expression<bool>? banned,
    Expression<bool>? active,
    Expression<bool>? verified,
    Expression<String>? role,
    Expression<int>? discount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idUser != null) 'id_user': idUser,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (banned != null) 'banned': banned,
      if (active != null) 'active': active,
      if (verified != null) 'verified': verified,
      if (role != null) 'role': role,
      if (discount != null) 'discount': discount,
    });
  }

  UserTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? idUser,
      Value<String>? name,
      Value<String>? email,
      Value<bool>? banned,
      Value<bool>? active,
      Value<bool>? verified,
      Value<String>? role,
      Value<int>? discount}) {
    return UserTableCompanion(
      id: id ?? this.id,
      idUser: idUser ?? this.idUser,
      name: name ?? this.name,
      email: email ?? this.email,
      banned: banned ?? this.banned,
      active: active ?? this.active,
      verified: verified ?? this.verified,
      role: role ?? this.role,
      discount: discount ?? this.discount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idUser.present) {
      map['id_user'] = Variable<String>(idUser.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (banned.present) {
      map['banned'] = Variable<bool>(banned.value);
    }
    if (active.present) {
      map['active'] = Variable<bool>(active.value);
    }
    if (verified.present) {
      map['verified'] = Variable<bool>(verified.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    if (discount.present) {
      map['discount'] = Variable<int>(discount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('id: $id, ')
          ..write('idUser: $idUser, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('banned: $banned, ')
          ..write('active: $active, ')
          ..write('verified: $verified, ')
          ..write('role: $role, ')
          ..write('discount: $discount')
          ..write(')'))
        .toString();
  }
}

class $UserTableTable extends UserTable
    with TableInfo<$UserTableTable, UserTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _idUserMeta = const VerificationMeta('idUser');
  @override
  late final GeneratedColumn<String?> idUser = GeneratedColumn<String?>(
      'id_user', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints: 'UNIQUE');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _bannedMeta = const VerificationMeta('banned');
  @override
  late final GeneratedColumn<bool?> banned = GeneratedColumn<bool?>(
      'banned', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (banned IN (0, 1))');
  final VerificationMeta _activeMeta = const VerificationMeta('active');
  @override
  late final GeneratedColumn<bool?> active = GeneratedColumn<bool?>(
      'active', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (active IN (0, 1))');
  final VerificationMeta _verifiedMeta = const VerificationMeta('verified');
  @override
  late final GeneratedColumn<bool?> verified = GeneratedColumn<bool?>(
      'verified', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: true,
      defaultConstraints: 'CHECK (verified IN (0, 1))');
  final VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String?> role = GeneratedColumn<String?>(
      'role', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _discountMeta = const VerificationMeta('discount');
  @override
  late final GeneratedColumn<int?> discount = GeneratedColumn<int?>(
      'discount', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, idUser, name, email, banned, active, verified, role, discount];
  @override
  String get aliasedName => _alias ?? 'user_table';
  @override
  String get actualTableName => 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_user')) {
      context.handle(_idUserMeta,
          idUser.isAcceptableOrUnknown(data['id_user']!, _idUserMeta));
    } else if (isInserting) {
      context.missing(_idUserMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('banned')) {
      context.handle(_bannedMeta,
          banned.isAcceptableOrUnknown(data['banned']!, _bannedMeta));
    } else if (isInserting) {
      context.missing(_bannedMeta);
    }
    if (data.containsKey('active')) {
      context.handle(_activeMeta,
          active.isAcceptableOrUnknown(data['active']!, _activeMeta));
    } else if (isInserting) {
      context.missing(_activeMeta);
    }
    if (data.containsKey('verified')) {
      context.handle(_verifiedMeta,
          verified.isAcceptableOrUnknown(data['verified']!, _verifiedMeta));
    } else if (isInserting) {
      context.missing(_verifiedMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
          _roleMeta, role.isAcceptableOrUnknown(data['role']!, _roleMeta));
    } else if (isInserting) {
      context.missing(_roleMeta);
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
    } else if (isInserting) {
      context.missing(_discountMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $UserTableTable userTable = $UserTableTable(this);
  late final UserDao userDao = UserDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [userTable];
}
