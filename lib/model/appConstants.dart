import 'package:flutter/foundation.dart';
import 'package:iit_app/model/appConstants_conflicts.dart';
// import 'package:universal_io/io.dart';

import 'package:chopper/chopper.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:iit_app/data/internet_connection_interceptor.dart';
import 'package:iit_app/data/post_api_service.dart';
import 'package:iit_app/model/LocalDatabase/databaseQuery.dart';
import 'package:iit_app/model/LocalDatabase/databaseWrite.dart';
import 'package:iit_app/model/built_post.dart';
import 'package:iit_app/model/LocalDatabase/database_helpers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:iit_app/services/connectivityCheck.dart';
import 'package:iit_app/ui/internet_error_flushbar.dart';

class AppConstants {
  static String minSupportedVersion;
  static String installedVersion;

  static final internetErrorFlushBar = InternetErrorFlushbar();

  //for guest user
  static bool isGuest = false;

// TODO: define minimum padding for safe area here so that it can be constant over whole app

  // static EdgeInsets safeAreaMinPadding = EdgeInsets.fromLTRB(2, 2, 2, 2);

  static ConnectionStatusSingleton connectionStatus;
  static bool isLoggedIn = false;
  // static bool isOnline = false;
  // static Stream connectivityStream;

  // ------------------------------------------ connectivity variables
  static bool guestButtonEnabled = true;
  static bool logInButtonEnabled = true;
  static bool firstTimeFetching = true;

  static bool chooseColorPaletEnabled = false;

  static String deviceDirectoryPathImages;

  static String djangoToken;

  static BuiltProfilePost _user;

  static BuiltProfilePost get currentUser => _user;

  static set currentUser(BuiltProfilePost user) {
    _user = user;
    subscribeAll();
  }

  static subscribeAll() async {
    if (_user == null) return;
    for (var club in _user.club_subscriptions) {
      try {
        await FirebaseMessaging.instance.subscribeToTopic('C_${club.id}');
      } catch (e) {}
    }

    for (var entity in _user.entity_subscriptions) {
      try {
        await FirebaseMessaging.instance.subscribeToTopic('E_${entity.id}');
      } catch (e) {}
    }
  }

  static unsubscribeAll() async {
    if (_user == null) return;
    for (var club in _user.club_subscriptions) {
      try {
        await FirebaseMessaging.instance.unsubscribeFromTopic('C_${club.id}');
      } catch (e) {}
    }

    for (var entity in _user.entity_subscriptions) {
      try {
        await FirebaseMessaging.instance.unsubscribeFromTopic('E_${entity.id}');
      } catch (e) {}
    }
  }

  static PostApiService service;
  static BuiltList<BuiltAllNotices> noticeSummaryFromDatabase;
  static BuiltList<BuiltWorkshopSummaryPost> workshopFromDatabase =
      BuiltList<BuiltWorkshopSummaryPost>();
  static BuiltList<BuiltAllCouncilsPost> councilsSummaryfromDatabase;
  static BuiltList<EntityListPost> entitiesSummaryFromDatabase;

  static Future setDeviceDirectoryForImages() async {
    if (!kIsWeb) AppConstantConflicts.setDeviceDirectoryForImages();
    // String path = (await getApplicationDocumentsDirectory()).path + '/Images';

    // Directory(path).exists().then((exist) {
    //   if (exist == false) {
    //     Directory(path).createSync();
    //   }
    //   AppConstants.deviceDirectoryPathImages = path;
    // });
  }

  static Future populateWorkshopsAndCouncilAndEntityButtons() async {
    try {
      final workshopSnapshots = await service.getActiveWorkshops();
      final workshopPosts = workshopSnapshots.body;

      final councilSummarySnapshots = await service.getAllCouncils();
      final councilSummaryPosts = councilSummarySnapshots.body;

      final entitySummarySnapshots = await service.getAllEntity();
      final entitySummaryPosts = entitySummarySnapshots.body;

      if (!kIsWeb) {
        DatabaseHelper helper = DatabaseHelper.instance;
        var database = await helper.database;

        councilsSummaryfromDatabase =
            await DatabaseQuery.getAllCouncilsSummary(db: database);
        workshopFromDatabase =
            await DatabaseQuery.getAllWorkshopsSummary(db: database);
        entitiesSummaryFromDatabase =
            await DatabaseQuery.getAllEntitiesSummary(db: database);
        // print(' workshops is empty: ${(workshops.isEmpty == true).toString()}');

        if (workshopFromDatabase == null) {
          // insert all workshop information for the first time
          await DatabaseWrite.deleteAllWorkshopsSummary(db: database);
          await DatabaseWrite.deleteAllCouncilsSummary(db: database);
          await DatabaseWrite.deleteAllEntitySummary(db: database);
        }

        print(
            'fetching workshops and all councils and entites summary from json');
        // API calls to fetch the data

// storing the data fetched from json objects into local database
        // ? remember, we use council summary in database while fetching other data (most of time)
        await DatabaseWrite.insertCouncilSummaryIntoDatabase(
            councils: councilSummaryPosts, db: database);

// using forEach instead of for loop so that image being written to disk in backgroud without affecting main processes.
        councilSummaryPosts.forEach((council) async {
          await writeImageFileIntoDisk(council.small_image_url);
        });

        await DatabaseWrite.insertEntitiesSummaryIntoDatabase(
            db: database, entities: entitySummaryPosts);

// using forEach instead of for loop so that image being written to disk in backgroud without affecting main processes.
        entitySummaryPosts.forEach((entity) async {
          await writeImageFileIntoDisk(entity.small_image_url);
        });

        for (var post in workshopPosts) {
          await DatabaseWrite.insertWorkshopSummaryIntoDatabase(
              post: post, db: database);
          writeImageFileIntoDisk(post.club == null
              ? post.entity.small_image_url
              : post.club.small_image_url);
        }
      }

// fetching the data from local database and storing it into variables
// whose scope is throughout the app

      councilsSummaryfromDatabase = councilSummaryPosts;
      // await helper.getAllCouncilsSummary(db: database);
      workshopFromDatabase = workshopPosts;
      // await helper.getAllWorkshopsSummary(db: database);
      entitiesSummaryFromDatabase = entitySummaryPosts;

      print('workshops and all councils and entities summary fetched ');
    } on InternetConnectionException catch (error) {
      throw error;
    } catch (err) {
      print(err);
    }
  }

  static writeCouncilAndEntityLogoIntoDisk() async {
// using forEach instead of for loop so that image being written to disk in backgroud without affecting main processes.
    councilsSummaryfromDatabase?.forEach((council) async {
      await writeImageFileIntoDisk(council.small_image_url);
    });
    entitiesSummaryFromDatabase?.forEach((entity) async {
      await writeImageFileIntoDisk(entity.small_image_url);
    });
  }

  static writeImageFileIntoDisk(String url) async {
    if (!kIsWeb) AppConstantConflicts.writeImageFileIntoDisk(url);
    // if (url == null || url.isEmpty) return null;

    // final parsed = _diskRWableImageUrl(url);

    // File file = File('${AppConstants.deviceDirectoryPathImages}/$parsed');

    // if (file.existsSync() == false) {
    //   http.get(url).catchError((error) {
    //     print('Error in downloading image : $error');
    //   }).then((response) {
    //     if (response != null && response.statusCode == 200) {
    //       final imageData = response.bodyBytes.toList();
    //       final File writingFile =
    //           File('${AppConstants.deviceDirectoryPathImages}/$parsed');
    //       writingFile.writeAsBytesSync(imageData);
    //       print('image saved into disk ');
    //     }
    //   });
    // }
  }

  // static String _diskRWableImageUrl(String imageUrl) {
  //   String parsedUrl = '';
  //   for (var element in imageUrl.split('/')) {
  //     parsedUrl += element;
  //   }
  //   return parsedUrl;
  // }

  /// if file doesn't exist, null is returned
  static getImageFile(String url) {
    if (!kIsWeb)
      return AppConstantConflicts.getImageFile(url);
    else
      return null;
    // if (url == null || url.isEmpty) return null;

    // File file;

    // final parsed = _diskRWableImageUrl(url);

    // file = File('${AppConstants.deviceDirectoryPathImages}/$parsed');

    // if (file.existsSync()) {
    //   return file;
    // } else
    //   return null;
  }

// TODO: we fetch council and entity summaries only once in while initializing empty database, make it refreshable.

  static Future updateAndPopulateWorkshops() async {
    print('fetching workshops infos from json for updation');
    try {
      Response<BuiltList<BuiltWorkshopSummaryPost>> workshopSnapshots =
          await service.getActiveWorkshops();

      if (!kIsWeb) {
        DatabaseHelper helper = DatabaseHelper.instance;
        var database = await helper.database;

        if (workshopSnapshots.body != null) {
          await DatabaseWrite.deleteAllWorkshopsSummary(db: database);
          final workshopPosts = workshopSnapshots.body;

          for (var post in workshopPosts) {
            await DatabaseWrite.insertWorkshopSummaryIntoDatabase(
                post: post, db: database);
          }
          workshopFromDatabase = workshopPosts;
        }
      } else {
        final workshopPosts = workshopSnapshots.body;
        workshopFromDatabase = workshopPosts;
      }
    } on InternetConnectionException catch (error) {
      throw error;
    } catch (err) {
      print(err);
    }
    print('workshops fetched and updated ');
  }

  static Future updateAndPopulateNotices() async {
    print('fetching notice summaries from json for updation');

    try {
      Response<BuiltList<BuiltAllNotices>> noticesSnapshots =
          await service.getAllNotices();

      if (!kIsWeb) {
        DatabaseHelper helper = DatabaseHelper.instance;
        var database = await helper.database;
        //print(noticesSnapshots.body.toString());
        if (noticesSnapshots.body != null) {
          await DatabaseWrite.deleteAllNotices(db: database);
          final notices = noticesSnapshots.body;
          for (var notice in notices) {
            await DatabaseWrite.insertNoticesSummaryIntoDatabase(
                db: database, notice: notice);
            //print("notice added: ${notice.id}");
          }
          noticeSummaryFromDatabase = notices;
        }
      } else {
        final notices = noticesSnapshots.body;
        noticeSummaryFromDatabase = notices;
      }
    } on InternetConnectionException catch (error) {
      throw error;
    } catch (err) {
      print(err);
    }
    print('notices fetched and updated');
  }

  static Future<BuiltList<BuiltAllNotices>> getAllNoticesFromDatabase(
      {bool refresh = false}) async {
    BuiltList<BuiltAllNotices> notices = BuiltList<BuiltAllNotices>();
    if (!kIsWeb) {
      DatabaseHelper helper = DatabaseHelper.instance;
      var database = await helper.database;

      notices = await DatabaseQuery.getAllNoticesSummary(db: database);

      if (notices == null || refresh == true) {
        try {
          Response<BuiltList<BuiltAllNotices>> noticesSnapshots =
              await AppConstants.service.getAllNotices().catchError((onError) {
            print("Error in fetching notices: ${onError.toString()}");
          });

          if (noticesSnapshots.body != null) {
            notices = noticesSnapshots.body;
            for (var notice in notices) {
              await DatabaseWrite.insertNoticesSummaryIntoDatabase(
                  notice: notice, db: database);
            }
          }
        } on InternetConnectionException catch (error) {
          throw error;
        } catch (err) {
          print(err);
        }
      }
    } else {
      try {
        Response<BuiltList<BuiltAllNotices>> noticesSnapshots =
            await AppConstants.service.getAllNotices().catchError((onError) {
          print("Error in fetching notices: ${onError.toString()}");
        });

        if (noticesSnapshots.body != null) {
          notices = noticesSnapshots.body;
        }
      } on InternetConnectionException catch (error) {
        throw error;
      } catch (err) {
        print(err);
      }
    }

    return notices;
  }

  static Future getNoticeDetailFromDatabase(
      {@required int noticeId, bool refresh = true}) async {
    BuiltNoticeDetail noticePost = BuiltNoticeDetail();
    if (!kIsWeb) {
      try {
        DatabaseHelper helper = DatabaseHelper.instance;
        var database = await helper.database;
        noticePost = await DatabaseQuery.getNoticeDetail(
            db: database, noticeId: noticeId);
        print('fetching notice detail from json for updation');
        if (noticePost == null || refresh == true) {
          Response<BuiltNoticeDetail> noticeSnapshots = await AppConstants
              .service
              .getNotice(AppConstants.djangoToken, noticeId);
          print({noticeSnapshots.body.toString()});
          if (noticeSnapshots.body != null) {
            noticePost = noticeSnapshots.body;

            await DatabaseWrite.insertNoticeDetailIntoDatabase(
                notice: noticePost, db: database);
          }
        }
      } on InternetConnectionException catch (error) {
        throw error;
      } catch (err) {
        print(err);
      }
    } else {
      try {
        Response<BuiltNoticeDetail> noticeSnapshots = await AppConstants.service
            .getNotice(AppConstants.djangoToken, noticeId);
        print({noticeSnapshots.body.toString()});
        if (noticeSnapshots.body != null) {
          noticePost = noticeSnapshots.body;
        }
      } on InternetConnectionException catch (error) {
        throw error;
      } catch (err) {
        print(err);
      }
    }
    print('notice detail fetched and updated');
    print(noticePost);
    return noticePost;
  }

  static Future updateAndPopulateAllEntities() async {
    try {
      final Response<BuiltList<EntityListPost>> entitySummarySnapshots =
          await service.getAllEntity();

      if (!kIsWeb) {
        DatabaseHelper helper = DatabaseHelper.instance;
        var database = await helper.database;

        if (entitySummarySnapshots.body != null) {
          await DatabaseWrite.deleteAllEntitySummary(db: database);
          final entitySummaryPosts = entitySummarySnapshots.body;

          await DatabaseWrite.insertEntitiesSummaryIntoDatabase(
              db: database, entities: entitySummaryPosts);

// using forEach instead of for loop so that image being written to disk in backgroud without affecting main processes.
          entitySummaryPosts.forEach((entity) async {
            await writeImageFileIntoDisk(entity.small_image_url);
          });
          entitiesSummaryFromDatabase = entitySummaryPosts;
        }
      } else {
        final entitySummaryPosts = entitySummarySnapshots.body;
        entitiesSummaryFromDatabase = entitySummaryPosts;
      }
    } on InternetConnectionException catch (error) {
      throw error;
    } catch (err) {
      print(err);
    }
  }

  static Future getCouncilDetailsFromDatabase(
      {@required int councilId, bool refresh = false}) async {
    if (!kIsWeb) {
      DatabaseHelper helper = DatabaseHelper.instance;
      var database = await helper.database;

      BuiltCouncilPost councilPost = await DatabaseQuery.getCouncilDetail(
          db: database, councilId: councilId);

      if (councilPost == null || refresh == true) {
        try {
          Response<BuiltCouncilPost> councilSnapshots = await AppConstants
              .service
              .getCouncil(AppConstants.djangoToken, councilId);

          if (councilSnapshots.body != null) {
            councilPost = councilSnapshots.body;

            await DatabaseWrite.insertCouncilDetailsIntoDatabase(
                councilPost: councilPost, db: database);
          }
        } on InternetConnectionException catch (error) {
          throw error;
        } catch (err) {
          print(err);
        }
      }

      return councilPost;
    } else {
      BuiltCouncilPost councilPost;
      try {
        Response<BuiltCouncilPost> councilSnapshots = await AppConstants.service
            .getCouncil(AppConstants.djangoToken, councilId);

        if (councilSnapshots.body != null) {
          councilPost = councilSnapshots.body;
        }
      } on InternetConnectionException catch (error) {
        throw error;
      } catch (err) {
        print(err);
      }
      return councilPost;
    }
  }

  static Future<List<int>> updateCouncilSubscriptionInDatabase(
      {@required int councilId, @required bool isSubscribed}) async {
    // Already checked for web while calling function.
    // The buttons should never be activable.
    DatabaseHelper helper = DatabaseHelper.instance;
    var database = await helper.database;

    List clubIds = await DatabaseWrite.updateCouncilSubcription(
        db: database, councilId: councilId, isSubscribed: isSubscribed);
    return clubIds;
  }

  static Future<BuiltClubPost> getClubDetailsFromDatabase(
      {@required int clubId, bool refresh = false}) async {
    if (!kIsWeb) {
      DatabaseHelper helper = DatabaseHelper.instance;
      var database = await helper.database;

      BuiltClubPost clubPost =
          await DatabaseQuery.getClubDetails(db: database, clubId: clubId);

      if (clubPost == null || refresh == true) {
        try {
          Response<BuiltClubPost> clubSnapshots = await AppConstants.service
              .getClub(clubId, AppConstants.djangoToken)
              .catchError((onError) {
            print("Error in fetching clubs: ${onError.toString()}");
          });

          if (clubSnapshots.body != null) {
            clubPost = clubSnapshots.body;

            await DatabaseWrite.insertClubDetailsIntoDatabase(
                clubPost: clubPost, db: database);
          }
        } on InternetConnectionException catch (error) {
          throw error;
        } catch (err) {
          print(err);
        }
      }

      return clubPost;
    } else {
      BuiltClubPost clubPost;
      try {
        Response<BuiltClubPost> clubSnapshots = await AppConstants.service
            .getClub(clubId, AppConstants.djangoToken)
            .catchError((onError) {
          print("Error in fetching clubs: ${onError.toString()}");
        });

        if (clubSnapshots.body != null) {
          clubPost = clubSnapshots.body;
        }
      } on InternetConnectionException catch (error) {
        throw error;
      } catch (err) {
        print(err);
      }
      return clubPost;
    }
  }

  static Future updateClubSubscriptionInDatabase(
      {@required int clubId,
      @required bool isSubscribed,
      @required int currentSubscribedUsers}) async {
    // Already checked for web while calling function.
    // The buttons should never be activable.
    DatabaseHelper helper = DatabaseHelper.instance;
    var database = await helper.database;

    final subscribedUsers = currentSubscribedUsers + (isSubscribed ? 1 : -1);

    await DatabaseWrite.updateClubSubcription(
        db: database,
        clubId: clubId,
        isSubscribed: isSubscribed,
        subscribedUsers: subscribedUsers);
  }

  static Future getEntityDetailsFromDatabase(
      {@required int entityId, bool refresh = false}) async {
    if (!kIsWeb) {
      DatabaseHelper helper = DatabaseHelper.instance;
      var database = await helper.database;

      BuiltEntityPost entityPost;
      await DatabaseQuery.getEntityDetails(db: database, entityId: entityId);

      if (entityPost == null || refresh == true) {
        try {
          Response<BuiltEntityPost> entitySnapshots = await AppConstants.service
              .getEntity(entityId, AppConstants.djangoToken)
              .catchError((onError) {
            print("Error in fetching entity: ${onError.toString()}");
          });
          if (entitySnapshots.body != null) {
            entityPost = entitySnapshots.body;

            await DatabaseWrite.insertEntityDetailsIntoDatabase(
                entityPost: entityPost, db: database);
          }
        } on InternetConnectionException catch (error) {
          throw error;
        } catch (err) {
          print(err);
        }
      }

      return entityPost;
    } else {
      BuiltEntityPost entityPost;
      try {
        Response<BuiltEntityPost> entitySnapshots = await AppConstants.service
            .getEntity(entityId, AppConstants.djangoToken)
            .catchError((onError) {
          print("Error in fetching entity: ${onError.toString()}");
        });
        if (entitySnapshots.body != null) {
          entityPost = entitySnapshots.body;
        }
      } on InternetConnectionException catch (error) {
        throw error;
      } catch (err) {
        print(err);
      }
      return entityPost;
    }
  }

  static Future updateEntitySubscriptionInDatabase(
      {@required int entityId,
      @required bool isSubscribed,
      @required int currentSubscribedUsers}) async {
    // Already checked for web while calling function.
    // The buttons should never be activable.
    DatabaseHelper helper = DatabaseHelper.instance;
    var database = await helper.database;

    final subscribedUsers = currentSubscribedUsers + (isSubscribed ? 1 : -1);

    await DatabaseWrite.updateEntitySubcription(
        db: database,
        entityId: entityId,
        isSubscribed: isSubscribed,
        subscribedUsers: subscribedUsers);
  }

  /// All locally stored data will be deleted ( only database not images).
  static Future deleteLocalDatabaseOnly() async {
    if (!kIsWeb) {
      DatabaseHelper helper = DatabaseHelper.instance;
      var database = await helper.database;
      await DatabaseWrite.deleteWholeDatabase(db: database);
    }
  }

  /// All locally stored data will be deleted (database and images).
  static Future deleteAllLocalDataWithImages() async {
    if (!kIsWeb) {
      DatabaseHelper helper = DatabaseHelper.instance;
      var database = await helper.database;
      await DatabaseWrite.deleteWholeDatabase(db: database);
      await AppConstantConflicts.deleteAllLocalImages();
      print('-----------------------------');
      // Directory(AppConstants.deviceDirectoryPathImages)
      //     .listSync(recursive: true)
      //     .forEach((f) {
      //   print('deleted : ' +
      //       (f.path.split('Images/').length > 1
      //           ? f.path.split('Images/')[1]
      //           : 'nothing was here'));
      //   f.deleteSync();
      // });
    }

    AppConstants.firstTimeFetching = true;
    AppConstants.workshopFromDatabase = null;
    AppConstants.councilsSummaryfromDatabase = null;
    AppConstants.entitiesSummaryFromDatabase = null;
  }

  static String addEventToCalendarLink(
      {@required BuiltWorkshopDetailPost workshop}) {
    final String initialUrlForCalendar =
        "https://www.google.com/calendar/render?action=TEMPLATE";

    final String title =
        "${workshop.title} - (${workshop.club?.name ?? workshop.entity?.name ?? ''})";

    String date = workshop.date.substring(0, 4) +
        workshop.date.substring(5, 7) +
        workshop.date.substring(8, 10);
    String startTime = convertTimeToUtc(workshop.time);
    String endTime = convertTimeToUtc(workshop.time, true);
    final String urlLink = initialUrlForCalendar +
        '&text=' +
        Uri.encodeFull(title) +
        '&dates=' +
        date +
        'T' +
        startTime +
        'Z' +
        '/' +
        date +
        'T' +
        endTime +
        'Z';
    return urlLink;
  }

  static String convertTimeToUtc(String time, [bool addHour = false]) {
    if (time == null) {
      return addHour ? '190000' : '180000';
    }
    int hour = int.parse(time.substring(0, 2));
    if (addHour) {
      hour += 1;
    }
    int minute = int.parse(time.substring(3, 5));
    if (minute >= 30) {
      hour -= 5;
      minute -= 30;
    } else {
      hour -= 6;
      minute += 30;
    }
    return (hour.toString() + minute.toString() + '00');
  }
}
