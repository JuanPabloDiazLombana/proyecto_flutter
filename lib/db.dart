import 'dart:io';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class db {
  static final db instance = db._init();
  static Database? _database;
  db._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('db.db');
    return _database!;
  }

  Future<Database> _initDB(String filepath) async {
    // final dbPath = await getDatabasesPath();
    // final path = join(dbPath, filepath);
    // return await openDatabase(path, version: 1, onCreate: _onCreateDB);
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, filepath);

// delete existing if any
    // await deleteDatabase(path);

// Make sure the parent directory exists
    try {
      await Directory(dirname(path)).create(recursive: true);
    } catch (_) {}

// Copy from asset
    ByteData data = await rootBundle.load(join("assets", filepath));
    List<int> bytes =
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await new File(path).writeAsBytes(bytes, flush: true);

// open the database
    return await openDatabase(path);
  }

  Future<int> insertString(String tabla, String valores) async {
    final db = await instance.database;
    return await db.rawInsert('INSERT INTO $tabla VALUES(NULL, $valores)');
  }

  Future<int> insert(String tabla, dynamic objeto) async {
    final db = await instance.database;
    return await db.insert(tabla, objeto.toMap());
  }

  Future<List<Map<String, Object?>>> select(String tabla) async {
    final db = await instance.database;
    final data = await db.rawQuery('SELECT * FROM $tabla');
    return List.generate(data.length, (i) {
      return data[i];
    });
  }

  Future<List<Map<String, Object?>>> selectArgs(String tabla, args) async {
    final db = await instance.database;
    final data = await db.rawQuery('SELECT * FROM $tabla WHERE $args');
    return List.generate(data.length, (i) {
      return data[i];
    });
  }
}
