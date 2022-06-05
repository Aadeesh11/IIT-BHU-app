import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'stringConstants.dart';

// TODO: Time to use moor

// singleton class to manage the database
class DatabaseHelper {
// This is the actual database filename that is saved in the docs directory.

  static final _databaseName = 'WorkshopInfoDatabase.db';
  // static final _databaseNameTwo = 'WorkshopInfoDatabaseTwo.db';

// Increment this version when you need to change the schema.
  static final _databaseVersion = 2;

// Make this a singleton class.
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

// Only allow a single open connection to the database.
  static Database _database;
  // static Database _databaseTwo;

  Future<bool> checkDatabaseIfEmpty() async {
    if (_database == null) {
      return true;
    }
    return false;
  }

  Future<Database> get database async {
    if (_database != null) {
      // print('database has values');
      return _database;
    }
    // print('database is empty');
    _database = await _initDatabase();
    return _database;
  }

// open the database
  static _initDatabase() async {
    // The path_provider plugin gets the right directory for Android or iOS.
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = documentDirectory.path + _databaseName;
    // print('path of Database Info: $path');
    // Open the database. Can also add an onUpdate callback parameter.
    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onDatabaseCreate,
      onUpgrade: _onDatabaseUpgrade,
    );
  }

  //for version upgrade
  static Future _onDatabaseUpgrade(
      Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1) {
      //for homepage
      await db.execute('      CREATE TABLE ${StringConst.noticeSummaryString} ('
          '        ${StringConst.idString} INTEGER PRIMARY KEY, '
          '        ${StringConst.titleString} DEFAULT "",'
          '        ${StringConst.importanceString} INTEGER DEFAULT 0, '
          '        ${StringConst.dateString} DEFAULT "", '
          '        ${StringConst.descriptionString} DEFAULT "") WITHOUT ROWID,');

//for notice detail
      await db.execute('      CREATE TABLE ${StringConst.noticeDetailString} ('
          '        ${StringConst.idString} INTEGER PRIMARY KEY,'
          '        ${StringConst.titleString} DEFAULT "",'
          '        ${StringConst.descriptionString} DEFAULT "",'
          '        ${StringConst.importanceString} INTEGER DEFAULT 0,'
          '        ${StringConst.noticeUpvoteString} INTEGER DEFAULT 0,'
          '        ${StringConst.noticeDownvoteString} INTEGER DEFAULT 0,'
          '        ${StringConst.noticeHasVotedString} DEFAULT "",'
          '        ${StringConst.dateString} DEFAULT "") WITHOUT ROWID');
    }
  }

  // SQL string to create the database

  static Future _onDatabaseCreate(Database db, int version) async {
// for workshops summary on homepage

    await db.execute('CREATE TABLE ${StringConst.workshopSummaryString} ('
        '       ${StringConst.idString} INTEGER PRIMARY KEY, '
        '       ${StringConst.isWorkshopString} INTEGER, '
        '       ${StringConst.clubIdString} INTEGER, '
        '       ${StringConst.clubString} DEFAULT "", '
        '       ${StringConst.councilIdString} INTEGER, '
        '       ${StringConst.entityIdString} INTEGER, '
        '       ${StringConst.entityString} DEFAULT "", '
        '       ${StringConst.smallImageUrlString} DEFAULT "", '
        '       ${StringConst.largeImageUrlString} DEFAULT "", '
        '       ${StringConst.titleString} DEFAULT "", '
        '       ${StringConst.dateString} DEFAULT "", '
        '       ${StringConst.timeString} DEFAULT "") WITHOUT ROWID');

//for homepage
    await db.execute('      CREATE TABLE ${StringConst.noticeSummaryString} ('
        '        ${StringConst.idString} INTEGER PRIMARY KEY, '
        '        ${StringConst.titleString} DEFAULT "",'
        '        ${StringConst.importanceString} INTEGER DEFAULT 0, '
        '        ${StringConst.dateString} DEFAULT "", '
        '        ${StringConst.descriptionString} DEFAULT "") WITHOUT ROWID');

//for notice detail
    await db.execute('      CREATE TABLE ${StringConst.noticeDetailString} ('
        '        ${StringConst.idString} INTEGER PRIMARY KEY,'
        '        ${StringConst.titleString} DEFAULT "",'
        '        ${StringConst.descriptionString} DEFAULT "",'
        '        ${StringConst.importanceString} INTEGER DEFAULT 0,'
        '        ${StringConst.noticeUpvoteString} INTEGER DEFAULT 0,'
        '        ${StringConst.noticeDownvoteString} INTEGER DEFAULT 0,'
        '        ${StringConst.noticeHasVotedString} DEFAULT "",'
        '        ${StringConst.dateString} DEFAULT "") WITHOUT ROWID');

// for council buttons

    await db.execute('CREATE TABLE ${StringConst.allCouncislSummaryString} ('
        '       ${StringConst.idString} INTEGER PRIMARY KEY,'
        '       ${StringConst.nameString} DEFAULT "",'
        '       ${StringConst.smallImageUrlString} DEFAULT "",'
        '       ${StringConst.largeImageUrlString} DEFAULT "") WITHOUT ROWID');

// for council page

    await db.execute('      CREATE TABLE ${StringConst.councilDetailString} ('
        '        ${StringConst.idString} INTEGER PRIMARY KEY,'
        '        ${StringConst.nameString} DEFAULT "",'
        '        ${StringConst.descriptionString} DEFAULT "",'
        '        ${StringConst.mainPoRString} INTEGER,'
        '        ${StringConst.jointPoRListAsStringString} DEFAULT "",'
        '        ${StringConst.smallImageUrlString} DEFAULT "",'
        '        ${StringConst.largeImageUrlString} DEFAULT "",'
        '        ${StringConst.isPORHolderString} INTEGER,'
        '        ${StringConst.websiteUrlString} DEFAULT "",'
        '        ${StringConst.facebookUrlString} DEFAULT "",'
        '        ${StringConst.twitterUrlString} DEFAULT "",'
        '        ${StringConst.instagramUrlString} DEFAULT "",'
        '        ${StringConst.linkedinUrlString} DEFAULT "",'
        '        ${StringConst.youtubeUrlString} DEFAULT "") WITHOUT ROWID');

    await db.execute('      CREATE TABLE ${StringConst.porHoldersString} ('
        '        ${StringConst.idString} INTEGER PRIMARY KEY,'
        '        ${StringConst.nameString} DEFAULT "",'
        '        ${StringConst.emailString} DEFAULT "",'
        '        ${StringConst.phoneNumberString} DEFAULT "",'
        '        ${StringConst.photoUrlString} DEFAULT "") WITHOUT ROWID');

    await db.execute('      CREATE TABLE ${StringConst.clubSummaryString} ('
        '        ${StringConst.idString} INTEGER PRIMARY KEY,'
        '        ${StringConst.nameString} DEFAULT "",'
        '        ${StringConst.councilIdString} INTEGER,'
        '        ${StringConst.smallImageUrlString} DEFAULT "",'
        '        ${StringConst.largeImageUrlString} DEFAULT "") WITHOUT ROWID');

// for club page

    await db.execute('      CREATE TABLE ${StringConst.clubDetailsString} ('
        '        ${StringConst.idString} INTEGER PRIMARY KEY,'
        '        ${StringConst.nameString} DEFAULT "",'
        '        ${StringConst.descriptionString} DEFAULT "",'
        '        ${StringConst.councilIdString} INTEGER,'
        '        ${StringConst.councilNameString} DEFAULT "",'
        '        ${StringConst.councilSmallImageUrlString} DEFAULT "",'
        '        ${StringConst.councilLargeImageUrlString} DEFAULT "",'
        '        ${StringConst.mainPoRString} INTEGER,'
        '        ${StringConst.jointPoRListAsStringString} DEFAULT "",'
        '        ${StringConst.smallImageUrlString} DEFAULT "",'
        '        ${StringConst.largeImageUrlString} DEFAULT "",'
        '        ${StringConst.isSubscribedString} INTEGER,'
        '        ${StringConst.subscribedUsersString} INTEGER,'
        '        ${StringConst.isPORHolderString} INTEGER,'
        '        ${StringConst.websiteUrlString} DEFAULT "",'
        '        ${StringConst.facebookUrlString} DEFAULT "",'
        '        ${StringConst.twitterUrlString} DEFAULT "",'
        '        ${StringConst.instagramUrlString} DEFAULT "",'
        '        ${StringConst.linkedinUrlString} DEFAULT "",'
        '        ${StringConst.youtubeUrlString} DEFAULT "") WITHOUT ROWID');

    // for entity buttons

    await db.execute('CREATE TABLE ${StringConst.entitySummaryString} ('
        '       ${StringConst.idString} INTEGER PRIMARY KEY,'
        '       ${StringConst.nameString} DEFAULT "",'
        '       ${StringConst.isPermanentString} INTEGER,'
        '       ${StringConst.isHighlightedString} INTEGER,'
        '       ${StringConst.smallImageUrlString} DEFAULT "",'
        '       ${StringConst.largeImageUrlString} DEFAULT "") WITHOUT ROWID');

    // for entity page

    await db.execute('      CREATE TABLE ${StringConst.entityDetailsString} ('
        '        ${StringConst.idString} INTEGER PRIMARY KEY,'
        '        ${StringConst.nameString} DEFAULT "",'
        '        ${StringConst.descriptionString} DEFAULT "",'
        '        ${StringConst.pointOfContactAsStringArrayString} DEFAULT "",'
        '        ${StringConst.smallImageUrlString} DEFAULT "",'
        '        ${StringConst.largeImageUrlString} DEFAULT "",'
        '        ${StringConst.isSubscribedString} INTEGER,'
        '        ${StringConst.subscribedUsersString} INTEGER,'
        '        ${StringConst.isPORHolderString} INTEGER,'
        '        ${StringConst.websiteUrlString} DEFAULT "",'
        '        ${StringConst.facebookUrlString} DEFAULT "",'
        '        ${StringConst.twitterUrlString} DEFAULT "",'
        '        ${StringConst.instagramUrlString} DEFAULT "",'
        '        ${StringConst.linkedinUrlString} DEFAULT "",'
        '        ${StringConst.youtubeUrlString} DEFAULT "") WITHOUT ROWID');
  }

  Future closeDatabase({@required Database db}) async => db.close();
}
