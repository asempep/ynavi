import 'package:help/models/memo_data.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper{

  static Database? _database;

  Future<void> initDataBase() async {
   if(_database == null){
     var databasesPath = await getDatabasesPath();
     String path = join(databasesPath,'memos.db');

     _database= await openDatabase(path, version :1,
         onCreate: (Database db, int version)async{
           await db.execute('''
      CREATE TABLE memos(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      content TEXT,
      createAT TEXT
      )
      ''');
         });
   }
  }

  Future<List<MemoData>> getMemos() async {
    await initDataBase();
    List<Map<String, dynamic>> maps = await _database!.query('memos');

    return List.generate(maps.length, (index){
      
      return MemoData(
        id: maps[index]['id'],
          content: maps[index]['content'],
          createAt: DateTime.parse(maps[index]['createAt']));
    });
  }
}