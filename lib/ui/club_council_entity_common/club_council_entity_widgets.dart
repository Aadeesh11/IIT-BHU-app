import 'package:iit_app/ui/web_conflicts/club_council_entity_thumbnail_io.dart';
import 'package:iit_app/ui/web_conflicts/club_council_entity_thumbnail_web.dart';
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:chopper/chopper.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:iit_app/data/internet_connection_interceptor.dart';
import 'package:iit_app/external_libraries/spin_kit.dart';
import 'package:iit_app/model/appConstants.dart';
import 'package:iit_app/model/built_post.dart';
import 'package:iit_app/model/colorConstants.dart';
import 'package:iit_app/model/deprecatedWidgetsStyle.dart';
import 'package:iit_app/pages/club_entity/clubPage.dart';
import 'package:iit_app/screens/create.dart';
import 'package:iit_app/ui/club_council_entity_common/description.dart';
import 'package:iit_app/pages/club_entity/entityPage.dart';
import 'package:iit_app/ui/separator.dart';
import 'package:iit_app/ui/text_style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ClubCouncilAndEntityWidgets {
  static Widget getPanelBackground(
    BuildContext context,
    File largeLogoFile, {
    bool isCouncil = false,
    BuiltCouncilPost councilDetail,
    bool isClub = false,
    BuiltClubPost clubDetail,
    ClubListPost club,
    bool isEntity = false,
    BuiltEntityPost entityDetail,
    EntityListPost entity,
    Function update,
    Function toggler,
    bool toggling,
    GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey,
  }) {
    assert((isCouncil == true && isClub == false && isEntity == false) ||
        (isCouncil == false && isClub == true && isEntity == false) ||
        (isCouncil == false && isClub == false && isEntity == true));

    final bottom = MediaQuery.of(context).viewInsets.bottom;
    dynamic _data = isCouncil
        ? councilDetail
        : isClub
            ? clubDetail
            : entityDetail;

    final _secy = isCouncil
        ? councilDetail?.gensec
        : isClub
            ? clubDetail?.secy
            : null;
    final _jointSecyOrPoC = isCouncil
        ? councilDetail?.joint_gensec
        : isClub
            ? clubDetail?.joint_secy
            : entityDetail?.point_of_contact;

    return Container(
      color: ColorConstants.workshopContainerBackground,
      height: MediaQuery.of(context).size.height * 0.90,
      child: _data == null
          ? Container(
              height: MediaQuery.of(context).size.height * 3 / 4,
              child: Center(
                child: LoadingCircle,
              ),
            )
          : ListView(
              shrinkWrap: true,
              children: [
                Stack(
                  children: [
                    kIsWeb
                        ? getPanelBackgroundImageWeb(_data.large_image_url)
                        : getPanelBackgroundImageIO(
                            largeLogoFile, _data.large_image_url),
                    // Container(
                    //   child: largeLogoFile != null && !kIsWeb
                    //       ? Image.file(largeLogoFile,
                    //           fit: BoxFit.cover, height: 300.0)
                    //       : _data.large_image_url != null &&
                    //               _data.large_image_url != ''
                    //           ? Image.network(_data.large_image_url,
                    //               fit: BoxFit.cover, height: 300.0)
                    //           : Image(image: AssetImage('assets/iitbhu.jpeg')),
                    //   constraints: BoxConstraints.expand(height: 295.0),
                    // ),
                    ClubCouncilAndEntityWidgets.getGradient(),
                    Container(
                      padding: EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 0.0),
                      child: ClubCouncilAndEntityWidgets.getTitleCard(
                          title: _data.name,
                          id: _data.id,
                          imageUrl: _data.small_image_url,
                          isClub: isClub,
                          isCouncil: isCouncil,
                          isEntity: isEntity,
                          context: context),
                    ),
                    ClubCouncilAndEntityWidgets.getToolbar(context),
                  ],
                ),
                SizedBox(height: 8.0),
                (isClub && clubDetail.is_por_holder) ||
                        (isEntity && entityDetail.is_por_holder)
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              style: raisedButtonStyle,
                              child: Text('Create workshop'),
                              onPressed: () async {
                                await Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => CreateEditScreen(
                                        club: club,
                                        entity: entity,
                                        title: clubDetail?.name ??
                                            entityDetail?.name ??
                                            '',
                                        isWorkshopOrEvent: 'workshop'),
                                  ),
                                );
                              }),
                          (isClub && clubDetail.is_por_holder) ||
                                  (isEntity && entityDetail.is_por_holder)
                              ? ElevatedButton(
                                  style: raisedButtonStyle,
                                  child: Text('Create event'),
                                  onPressed: () async {
                                    await Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => CreateEditScreen(
                                            club: club,
                                            title: clubDetail?.name ??
                                                entityDetail?.name ??
                                                '',
                                            entity: entity,
                                            isWorkshopOrEvent: 'event'),
                                      ),
                                    );
                                  })
                              : Container(),
                        ],
                      )
                    : Container(),
                Padding(
                  padding: EdgeInsets.only(bottom: bottom),
                  child: Description(
                    map: _data,
                    isCouncil: isCouncil,
                    isClub: isClub,
                    isEntity: isEntity,
                  ),
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: (isClub || isEntity)
                      ? _getSubscribed(_data)
                      : Container(),
                ),
                SizedBox(height: 15.0),
                ClubCouncilAndEntityWidgets.getSecies(
                  context,
                  secy: _secy,
                  jointSecy: _jointSecyOrPoC,
                  isEntity: isEntity,
                  isSports: (isClub && club.council.name.contains('Sport')),
                ),
                (_data != null && isCouncil==false)
                    ? getSubscribeButtons(
                        context: context,
                        isCouncil: isCouncil,
                        isClub: isClub,
                        isEntity: isEntity,
                        data: _data,
                        update: update,
                        toggler: toggler,
                        toggling: toggling,
                        scaffoldMessengerKey: scaffoldMessengerKey,
                      )
                    : Container(),
                _data == null
                    ? Container()
                    : ClubCouncilAndEntityWidgets.getSocialLinks(_data),
                SizedBox(
                    height: 2 *
                        ClubCouncilAndEntityWidgets.getMinPanelHeight(context)),
              ],
            ),
    );
  }

  static Row getSubscribeButtons({
    @required BuildContext context,
    bool isCouncil = false,
    bool isClub = false,
    bool isEntity = false,
    data,
    Function update,
    Function toggler,
    bool toggling,
    GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey,
  }) {
    // bool _toggling = false;

    final _disableMuteButton =
        (isCouncil == false && data?.is_subscribed == false) || (kIsWeb);
    final _disableUnmuteButton =
        (isCouncil == false && data?.is_subscribed == true) || (kIsWeb);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton.icon(
          icon: toggling
              ? SpinKitWave(
                  color: Colors.white,
                  size: 20.0,
                )
              : Icon(
                  Icons.volume_off,
                  color: _disableMuteButton
                      ? Colors.white.withOpacity(0.5)
                      : Colors.white,
                ),
          label: Text(
            toggling
                ? 'Please Wait'
                : isCouncil
                    ? 'Mute Council'
                    : isClub
                        ? 'Mute Club'
                        : 'Mute Entity',
            style: TextStyle(
                color: _disableMuteButton
                    ? Colors.white.withOpacity(0.5)
                    : Colors.white),
          ),
          onPressed: AppConstants.isGuest
              ? () {
                  // ScaffoldMessenger.of(context)?.removeCurrentSnackBar();
                  // var snackbar =
                  //     SnackBar(content: Text("Please Log in to Mute"));
                  // ScaffoldMessenger.of(context)?.showSnackBar(snackbar);
                  Fluttertoast.showToast(msg: "Please Log in to Mute");
                }
              : _disableMuteButton // disable mute button if not subscribed in case of club/entity.
                  ? null
                  : () async {
                      if (!toggling) {
                        // _toggling = true;
                        toggler();
                        if (isCouncil) {
                          int councilId = data.id;
                          bool unsub = await confirmUnsubDialog(
                            context: context,
                            titleText: "Mute This Council",
                            bodyText:
                                "Are you sure you wish to mute all the clubs in this council? You will no longer receive any notification for workshops or events of this council.",
                          );
                          if (unsub) {
                            // await scaffoldMessengerKey.currentState
                            //     ?.removeCurrentSnackBar();
                            
                            // scaffoldMessengerKey.currentState
                            //     ?.showSnackBar(SnackBar(
                            //   content: Text('Muting. Please Wait'),
                            //   duration: Duration(seconds: 10),
                            // ));
                            Fluttertoast.showToast(
                                msg:"Muting. Please Wait"
                            );
                            List<int> clubIds = await AppConstants
                                .updateCouncilSubscriptionInDatabase(
                                    councilId: councilId, isSubscribed: false);
                            await AppConstants.service
                                .councilUnsubscribe(
                              councilId,
                              AppConstants.djangoToken,
                            )
                                .then((value) async {
                              if (value != null) {
                                print("Unsubscribed from Council:$councilId");
                                for (int i in clubIds) {
                                  await FirebaseMessaging.instance
                                      .unsubscribeFromTopic('C_$i')
                                      .then((_) =>
                                          print('Unsubscribed from C_$i'));
                                }
                                // scaffoldMessengerKey.currentState
                                //     ?.removeCurrentSnackBar();
                                // scaffoldMessengerKey.currentState
                                //     ?.showSnackBar(SnackBar(
                                //   content: Text('Successfully Muted!'),
                                //   duration: Duration(seconds: 3),
                                // ));
                                Fluttertoast.showToast(
                                    msg:"Successfully Muted!"
                                );
                              }
                            }).catchError((onError) {
                              if (onError is InternetConnectionException) {
                                AppConstants.internetErrorFlushBar
                                    .showFlushbar(context);
                                return;
                              }
                              final error = onError as Response<dynamic>;
                              print(error.body);
                            });
                          }
                        } else if (isClub) {
                          bool unsub = await confirmUnsubDialog(
                            context: context,
                            titleText: "Mute This Club",
                            bodyText:
                                "Are you sure you wish to mute this club? You will no longer receive any notification for workshops or events of this club.",
                          );
                          if (unsub) {
                            print(data.is_subscribed);
                            if (data.is_subscribed) {
                              int clubId = data.id;
                              await AppConstants.service
                                  .toggleClubSubscription(
                                      clubId, AppConstants.djangoToken)
                                  .then((snapshot) async {
                                print(
                                    "status of club subscription: ${snapshot.statusCode}");

                                if (snapshot.statusCode == 200) {
                                  try {
                                    await AppConstants
                                        .updateClubSubscriptionInDatabase(
                                            clubId: clubId,
                                            isSubscribed: false,
                                            currentSubscribedUsers:
                                                data.subscribed_users);

                                    BuiltClubPost clubMap = await AppConstants
                                        .getClubDetailsFromDatabase(
                                            clubId: clubId);

                                    if (clubMap.is_subscribed == true) {
                                      await FirebaseMessaging.instance
                                          .subscribeToTopic('C_${clubMap.id}')
                                          .then((_) => print(
                                              'subscribed to C_${clubMap.id}'));
                                    } else {
                                      await FirebaseMessaging.instance
                                          .unsubscribeFromTopic(
                                              'C_${clubMap.id}');
                                    }
                                    // scaffoldMessengerKey.currentState
                                    //     ?.showSnackBar(SnackBar(
                                    //   content: Text('Successfully Muted'),
                                    //   duration: Duration(seconds: 3),
                                    // ));
                                    Fluttertoast.showToast(
                                        msg:"Successfully Muted"
                                    );
                                  } on InternetConnectionException catch (_) {
                                    AppConstants.internetErrorFlushBar
                                        .showFlushbar(context);
                                    return;
                                  } catch (err) {
                                    print(err);
                                  }
                                }
                              }).catchError((onError) {
                                if (onError is InternetConnectionException) {
                                  AppConstants.internetErrorFlushBar
                                      .showFlushbar(context);
                                  return;
                                }
                                print(
                                    "Error in toggleing: ${onError.toString()}");
                              });
                            } else {
                              // scaffoldMessengerKey.currentState
                              //     ?.showSnackBar(SnackBar(
                              //   content: Text('Already Muted!'),
                              //   duration: Duration(seconds: 3),
                              // ));
                              Fluttertoast.showToast(
                                  msg:"Already Muted!"
                              );
                            }
                          }
                        } else {
                          bool unsub = await confirmUnsubDialog(
                            context: context,
                            titleText: "Mute This Entity",
                            bodyText:
                                "Are you sure you wish to mute this entity? You will no longer receive any notification for workshops or events of this entity.",
                          );
                          if (unsub) {
                            if (data.is_subscribed) {
                              int entityId = data.id;
                              await AppConstants.service
                                  .toggleEntitySubscription(
                                      entityId, AppConstants.djangoToken)
                                  .then((snapshot) async {
                                print(
                                    "status of entity subscription: ${snapshot.statusCode}");

                                if (snapshot.statusCode == 200) {
                                  try {
                                    if (!kIsWeb)
                                      await AppConstants
                                          .updateEntitySubscriptionInDatabase(
                                              entityId: entityId,
                                              isSubscribed: false,
                                              currentSubscribedUsers:
                                                  data.subscribed_users);

                                    BuiltEntityPost entityMap =
                                        await AppConstants
                                            .getEntityDetailsFromDatabase(
                                                entityId: entityId);

                                    if (entityMap.is_subscribed == true) {
                                      await FirebaseMessaging.instance
                                          .subscribeToTopic('E_${entityMap.id}')
                                          .then((_) => print(
                                              'subscribed to E_${entityMap.id}'));
                                    } else {
                                      await FirebaseMessaging.instance
                                          .unsubscribeFromTopic(
                                              'E_${entityMap.id}');
                                    }

                                    // scaffoldMessengerKey.currentState
                                    //     ?.showSnackBar(SnackBar(
                                    //   content: Text('Successfully Muted'),
                                    //   duration: Duration(seconds: 3),
                                    // ));
                                    Fluttertoast.showToast(
                                        msg:"Successfully Muted"
                                    );
                                  } on InternetConnectionException catch (_) {
                                    AppConstants.internetErrorFlushBar
                                        .showFlushbar(context);
                                    return;
                                  } catch (err) {
                                    print(err);
                                  }
                                }
                              }).catchError((onError) {
                                if (onError is InternetConnectionException) {
                                  AppConstants.internetErrorFlushBar
                                      .showFlushbar(context);
                                  return;
                                }
                                print(
                                    "Error in toggleing: ${onError.toString()}");
                              });
                            } else {
                              // scaffoldMessengerKey.currentState
                              //     ?.showSnackBar(SnackBar(
                              //   content: Text('Already Muted!'),
                              //   duration: Duration(seconds: 3),
                              // ));
                              Fluttertoast.showToast(
                                  msg:"Already Muted!"
                              );
                            }
                          }
                        }
                        toggler();
                        update();
                      } else {
                        print("Not now");
                      }
                    },
        ),
        ElevatedButton.icon(
          icon: toggling
              ? SpinKitWave(
                  color: Colors.white,
                  size: 20.0,
                )
              : Icon(
                  Icons.volume_up,
                  color: _disableUnmuteButton
                      ? Colors.white.withOpacity(0.5)
                      : Colors.white,
                ),
          label: Text(
            toggling
                ? 'Please Wait'
                : isCouncil
                    ? 'Unmute Council'
                    : isClub
                        ? 'Unmute Club'
                        : 'Unmute Entity',
            style: TextStyle(
                color: _disableUnmuteButton
                    ? Colors.white.withOpacity(0.5)
                    : Colors.white),
          ),
          onPressed: AppConstants.isGuest
              ? () {
                  // ScaffoldMessenger.of(context)?.removeCurrentSnackBar();
                  // var snackbar =
                  //     SnackBar(content: Text("Please Log in to Unmute"));
                  // ScaffoldMessenger.of(context)?.showSnackBar(snackbar);
                  Fluttertoast.showToast(
                      msg:"Please Log in to Unmute"
                  );
                }
              : _disableUnmuteButton // disable unmute button if already subscribed in case of club/entity.
                  ? null
                  : () async {
                      if (!toggling) {
                        toggler();
                        if (isCouncil) {
                          // scaffoldMessengerKey.currentState
                          //     ?.removeCurrentSnackBar();
                          // scaffoldMessengerKey.currentState
                          //     ?.showSnackBar(SnackBar(
                          //   content: Text('Unmuting. Please Wait'),
                          //   duration: Duration(seconds: 10),
                          // ));
                          Fluttertoast.showToast(
                              msg:"Unmuting. Please Wait"
                          );
                          int councilId = data.id;
                          List<int> clubIds = await AppConstants
                              .updateCouncilSubscriptionInDatabase(
                                  councilId: councilId, isSubscribed: true);
                          await AppConstants.service
                              .councilSubscribe(
                            councilId,
                            AppConstants.djangoToken,
                          )
                              .then((value) async {
                            if (value != null) {
                              print("Subscribed to Council:$councilId");
                              for (int i in clubIds) {
                                await FirebaseMessaging.instance
                                    .subscribeToTopic('C_$i')
                                    .then((_) => print('Subscribed to C_$i'));
                              }
                              // scaffoldMessengerKey.currentState
                              //     ?.removeCurrentSnackBar();
                              // scaffoldMessengerKey.currentState
                              //     ?.showSnackBar(SnackBar(
                              //   content: Text('Successfully Unmuted!'),
                              //   duration: Duration(seconds: 3),
                              // ));
                              Fluttertoast.showToast(
                                  msg:"Successfully Unmuted!"
                              );
                            }
                          }).catchError((onError) {
                            if (onError is InternetConnectionException) {
                              AppConstants.internetErrorFlushBar
                                  .showFlushbar(context);
                              return;
                            }
                            final error = onError as Response<dynamic>;
                            print(error.body);
                          });
                        } else if (isClub) {
                          if (!data.is_subscribed) {
                            int clubId = data.id;
                            await AppConstants.service
                                .toggleClubSubscription(
                                    clubId, AppConstants.djangoToken)
                                .then((snapshot) async {
                              print(
                                  "status of club subscription: ${snapshot.statusCode}");

                              if (snapshot.statusCode == 200) {
                                try {
                                  await AppConstants
                                      .updateClubSubscriptionInDatabase(
                                          clubId: clubId,
                                          isSubscribed: true,
                                          currentSubscribedUsers:
                                              data.subscribed_users);

                                  BuiltClubPost clubMap = await AppConstants
                                      .getClubDetailsFromDatabase(
                                          clubId: clubId);

                                  if (clubMap.is_subscribed == true) {
                                    await FirebaseMessaging.instance
                                        .subscribeToTopic('C_${clubMap.id}')
                                        .then((_) => print(
                                            'subscribed to C_${clubMap.id}'));
                                  } else {
                                    await FirebaseMessaging.instance
                                        .unsubscribeFromTopic(
                                            'C_${clubMap.id}');
                                  }
                                  // scaffoldMessengerKey.currentState
                                  //     ?.showSnackBar(SnackBar(
                                  //   content: Text('Successfully Unmuted!'),
                                  //   duration: Duration(seconds: 3),
                                  // ));
                                  Fluttertoast.showToast(
                                      msg:"Successfully Unmuted!"
                                  );
                                } on InternetConnectionException catch (_) {
                                  AppConstants.internetErrorFlushBar
                                      .showFlushbar(context);
                                  return;
                                } catch (err) {
                                  print(err);
                                }
                              }
                            }).catchError((onError) {
                              if (onError is InternetConnectionException) {
                                AppConstants.internetErrorFlushBar
                                    .showFlushbar(context);
                                return;
                              }
                              print(
                                  "Error in toggleing: ${onError.toString()}");
                            });
                          } else {
                            // scaffoldMessengerKey.currentState
                            //     ?.showSnackBar(SnackBar(
                            //   content: Text('Already Unmuted!'),
                            //   duration: Duration(seconds: 3),
                            // ));
                            Fluttertoast.showToast(
                                msg:"Already Unmuted!"
                            );
                          }
                        } else {
                          if (!data.is_subscribed) {
                            int entityId = data.id;
                            await AppConstants.service
                                .toggleEntitySubscription(
                                    entityId, AppConstants.djangoToken)
                                .then((snapshot) async {
                              print(
                                  "status of entity subscription: ${snapshot.statusCode}");

                              if (snapshot.statusCode == 200) {
                                try {
                                  if (!kIsWeb)
                                    await AppConstants
                                        .updateEntitySubscriptionInDatabase(
                                            entityId: entityId,
                                            isSubscribed: true,
                                            currentSubscribedUsers:
                                                data.subscribed_users);

                                  BuiltEntityPost entityMap = await AppConstants
                                      .getEntityDetailsFromDatabase(
                                          entityId: entityId);

                                  if (entityMap.is_subscribed == true) {
                                    await FirebaseMessaging.instance
                                        .subscribeToTopic('E_${entityMap.id}')
                                        .then((_) => print(
                                            'subscribed to E_${entityMap.id}'));
                                  } else {
                                    await FirebaseMessaging.instance
                                        .unsubscribeFromTopic(
                                            'E_${entityMap.id}');
                                  }
                                  // scaffoldMessengerKey.currentState
                                  //     ?.showSnackBar(SnackBar(
                                  //   content: Text('Successfully Unmuted!'),
                                  //   duration: Duration(seconds: 3),
                                  // ));
                                  Fluttertoast.showToast(
                                      msg:"Successfully Unmuted!"
                                  );
                                } on InternetConnectionException catch (_) {
                                  AppConstants.internetErrorFlushBar
                                      .showFlushbar(context);
                                  return;
                                } catch (err) {
                                  print(err);
                                }
                              }
                            }).catchError((onError) {
                              if (onError is InternetConnectionException) {
                                AppConstants.internetErrorFlushBar
                                    .showFlushbar(context);
                                return;
                              }
                              print(
                                  "Error in toggleing: ${onError.toString()}");
                            });
                          } else {
                            // scaffoldMessengerKey.currentState
                            //     ?.showSnackBar(SnackBar(
                            //   content: Text('Already Unuted!'),
                            //   duration: Duration(seconds: 3),
                            // ));
                            Fluttertoast.showToast(
                                msg:"Already Unmuted!"
                            );
                          }
                        }
                        toggler();
                        update();
                      } else {
                        print("Not Now");
                      }
                    },
        ),
      ],
    );
  }

  static Future<bool> confirmUnsubDialog(
      {BuildContext context, String titleText, String bodyText}) async {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(titleText ?? ""),
          content: Text(bodyText ?? ""),
          actions: <Widget>[
            TextButton(
              style: flatButtonStyle,
              child: Text("No. Take Me Back."),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            TextButton(
              style: flatButtonStyle,
              child: Text("Yup!"),
              onPressed: () => Navigator.of(context).pop(true),
            ),
          ],
        );
      },
    );
  }

  static subUnsubDialog({BuildContext context, int councilId, bool subUnsub}) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: new Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              Text("Loading"),
            ],
          ),
        );
      },
    );
  }

  static double getMinPanelHeight(context) {
    return MediaQuery.of(context).size.height / 10;
  }

  static double getMaxPanelHeight(context) {
    return MediaQuery.of(context).size.height / 1.1;
  }

  static Row _getSubscribed(data) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Text('Subscription Count:',
          style: TextStyle(
              fontFamily: 'Opensans',
              fontSize: 15.0,
              color: ColorConstants.headingColor,
              fontWeight: FontWeight.w600)),
      SizedBox(width: 20),
      Container(
          height: 60.0,
          width: 120.0,
          decoration: BoxDecoration(
              color: ColorConstants.porHolderBackground,
              borderRadius: BorderRadius.circular(30.0)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 7.0),
                Text(
                  '${data.subscribed_users}',
                  style: TextStyle(
                      fontSize: 14.0, color: ColorConstants.porTextColor),
                ),
                SizedBox(width: 15),
                Icon(Icons.person,
                    color: AppConstants.isGuest
                        ? Colors.blue[100]
                        : data.is_subscribed
                            ? Colors.blue[400]
                            : Colors.blue[100],
                    size: 25.0),
              ]))
    ]);
  }

  static Container getSocialLinks(map) {
    _launchURL(String url) {
      print('URL: ${url}');
      launch(url);
    }

    Column _buildButtonColumn(IconData icon, String label, String url,
        {Color color = Colors.white}) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              icon: Icon(
                icon,
                color: color,
                size: 25.0,
              ),
              onPressed: () => _launchURL(url)),
          /*Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),*/
        ],
      );
    }

    var _icons = <Widget>[];
    if (map.youtube_url != null && map.youtube_url.length != 0)
      _icons.add(
        _buildButtonColumn(
            FontAwesomeIcons.youtube, 'YouTube', map.youtube_url, color: ColorConstants.iconColor),
      );
    if (map.website_url != null && map.website_url.length != 0)
      _icons.add(
        _buildButtonColumn(Icons.web, 'Website', map.website_url, color: ColorConstants.iconColor),
      );
    if (map.linkedin_url != null && map.linkedin_url.length != 0)
      _icons.add(
        _buildButtonColumn(
            FontAwesomeIcons.linkedin, 'LinkedIn', map.linkedin_url, color: ColorConstants.iconColor),
      );
    if (map.instagram_url != null && map.instagram_url.length != 0)
      _icons.add(
        _buildButtonColumn(
            FontAwesomeIcons.instagram, 'Instagaram', map.instagram_url, color: ColorConstants.iconColor),
      );
    if (map.facebook_url != null && map.facebook_url.length != 0)
      _icons.add(
        _buildButtonColumn(
            FontAwesomeIcons.facebook, 'Facebook', map.facebook_url, color: ColorConstants.iconColor),
      );
    if (map.twitter_url != null && map.twitter_url.length != 0)
      _icons.add(
        _buildButtonColumn(
            FontAwesomeIcons.twitter, 'Twitter', map.twitter_url, color: ColorConstants.iconColor),
      );

    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      /*decoration: BoxDecoration(
          color: Color(0xFF736AB7),
          borderRadius: BorderRadius.all(Radius.circular(10))),*/
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _icons,
      ),
    );
  }

  static Container getSecies(BuildContext context,
      {SecyPost secy, jointSecy, isEntity = false, isSports = false}) {
    var _displayList = <Widget>[];
    if (jointSecy.length > 0) {
      _displayList.add(SizedBox(width: 20));
      _displayList.add(ClubCouncilAndEntityWidgets.getPosHolder(
        context: context,
        imageUrl: jointSecy[0].photo_url,
        desg: isEntity
            ? 'PoR Holder'
            : isSports
                ? 'Point of Contact'
                : 'Joint-Secy',
        name: jointSecy[0].name,
        email: jointSecy[0].email,
        phone: jointSecy[0].phone_number,
      ));
      _displayList.add(SizedBox(width: 20));
    }
    if (secy != null) {
      _displayList.add(ClubCouncilAndEntityWidgets.getPosHolder(
        context: context,
        imageUrl: secy.photo_url,
        desg: isSports ? 'Point of Contact' : 'Secy',
        name: secy.name,
        email: secy.email,
        phone: secy.phone_number,
      ));
      _displayList.add(SizedBox(width: 20));
    }
    if (jointSecy.length > 1) {
      for (int i = 1; i < jointSecy.length; i++) {
        _displayList.add(ClubCouncilAndEntityWidgets.getPosHolder(
          context: context,
          imageUrl: jointSecy[i].photo_url,
          desg: isEntity
              ? 'PoR Holder'
              : isSports
                  ? 'Point of Contact'
                  : 'Joint-Secy',
          name: jointSecy[i].name,
          email: jointSecy[i].email,
          phone: jointSecy[i].phone_number,
        ));
        _displayList.add(SizedBox(width: 20));
      }
    }
    return Container(
      margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: ColorConstants.porHolderBackground,
      ),
      child: Column(
        children: [
          Center(child: Text('PoR Holders', style: Style.headingStyle)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _displayList),
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }

  static Container getToolbar(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Row(
          children: <Widget>[
            IconButton(
              color: ColorConstants.iconColor,
              iconSize: 30,
              icon: Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () async {
                Navigator.of(context).pop();
              },
            ),
          ],
        ));
  }

  static Container getGradient() {
    return Container(
      margin: EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            ColorConstants.workshopContainerBackground.withAlpha(0),
            ColorConstants.workshopContainerBackground
          ],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  static Widget getPosHolder(
      {String desg = '',
      BuildContext context,
      String name,
      String imageUrl,
      String email,
      String phone}) {
    return GestureDetector(
      onTap: () {
        detailsDialog(
          context: context,
          name: name,
          imageUrl: imageUrl,
          email: email,
          phone: phone,
        );
      },
      child: Column(
        children: <Widget>[
          SizedBox(height: 4.0),
          Center(
            child: CircleAvatar(
              backgroundImage: imageUrl == null || imageUrl == ''
                  ? AssetImage('assets/iitbhu.jpeg')
                  : NetworkImage(imageUrl),
              radius: 30.0,
              backgroundColor: Colors.transparent,
            ),
          ),
          Container(
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstants.porTextColor
              ),
              maxLines: 2,
            ),
            width: 100,
          ),
          desg == ''
              ? SizedBox(height: 1.0)
              : Text(desg, textAlign: TextAlign.center, style: TextStyle( color: ColorConstants.porTextColor),),
          SizedBox(height: 4.0),
        ],
      ),
    );
  }

  static Widget getTitleCard({
    BuildContext context,
    String title,
    String subtitle,
    int id,
    String imageUrl,
    bool isCouncil = false,
    bool isEntity = false,
    bool isClub = false,
    horizontal = false,
    ClubListPost club,
    EntityListPost entity,
    String clubTypeForHero = 'default',
    String entityTypeForHero = 'default',
  }) {
    int _counter = 0;
    if (isCouncil) _counter++;
    if (isClub) _counter++;
    if (isEntity) _counter++;

    assert(_counter == 1, 'All three, council club entity , can not be true');

    final clubThumbnail = kIsWeb
        ? getClubThumbnailWeb(horizontal, id, clubTypeForHero, imageUrl)
        : getClubThumbnailIO(horizontal, id, clubTypeForHero, imageUrl);

    final entityThumbnail = kIsWeb
        ? getEntityThumbnailWeb(horizontal, id, entityTypeForHero, imageUrl)
        : getEntityThumbnailIO(horizontal, id, entityTypeForHero, imageUrl);

    final councilThumbnail = kIsWeb
        ? getCouncilThumbnailWeb(horizontal, id, imageUrl)
        : getCouncilThumbnailIO(horizontal, id, imageUrl);

    // File logoFile = AppConstants.getImageFile(imageUrl);

    // if (logoFile == null) {
    //   AppConstants.writeImageFileIntoDisk(imageUrl);
    // }
    // logoFile = AppConstants.getImageFile(imageUrl);

    // final clubThumbnail = Container(
    //   margin: EdgeInsets.symmetric(vertical: 16.0),
    //   alignment:
    //       horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
    //   child: Hero(
    //     tag: "club-hero-$id-$clubTypeForHero",
    //     child: Container(
    //       child: ClipRRect(
    //         borderRadius: BorderRadius.circular(20),
    //         child: Image(
    //           fit: BoxFit.contain,
    //           image: imageUrl == null || imageUrl == ''
    //               ? AssetImage('assets/iitbhu.jpeg')
    //               : logoFile == null || kIsWeb
    //                   ? NetworkImage(imageUrl)
    //                   : FileImage(logoFile),
    //         ),
    //       ),
    //       height: horizontal ? 50 : 82,
    //       width: horizontal ? 50 : 82,
    //     ),
    //   ),
    // );

    // final councilThumbnail = Container(
    //   margin: EdgeInsets.symmetric(vertical: 16.0),
    //   alignment: FractionalOffset.center,
    //   child: Container(
    //     child: ClipRRect(
    //       borderRadius: BorderRadius.circular(20),
    //       child: Image(
    //         fit: BoxFit.contain,
    //         image: imageUrl == null || imageUrl == ''
    //             ? AssetImage('assets/iitbhu.jpeg')
    //             : logoFile == null || kIsWeb
    //                 ? NetworkImage(imageUrl)
    //                 : FileImage(logoFile),
    //       ),
    //     ),
    //     height: 92.0,
    //     width: 92.0,
    //   ),
    // );

    // final entityThumbnail = Container(
    //   margin: EdgeInsets.symmetric(vertical: 16.0),
    //   alignment:
    //       horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
    //   child: Hero(
    //     tag: "entity-hero-$id-$entityTypeForHero",
    //     child: Container(
    //       child: ClipRRect(
    //         borderRadius: BorderRadius.circular(20),
    //         child: Image(
    //           fit: BoxFit.contain,
    //           image: imageUrl == null || imageUrl == ''
    //               ? AssetImage('assets/iitbhu.jpeg')
    //               : logoFile == null || kIsWeb
    //                   ? NetworkImage(imageUrl)
    //                   : FileImage(logoFile),
    //         ),
    //       ),
    //       height: horizontal ? 50 : 82,
    //       width: horizontal ? 50 : 82,
    //     ),
    //   ),
    // );

    final clubCardContent = Container(
      margin: EdgeInsets.only(left: horizontal ? 40.0 : 10.0, right: 10.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          horizontal ? Container() : SizedBox(height: 4.0),
          Text(
            title,
            style: Style.titleTextStyle,
            maxLines: 2,
          ),
          Container(height: horizontal ? 4 : 10),
          subtitle == null
              ? Container()
              : Text(
                  subtitle,
                  style: Style.commonTextStyle,
                  maxLines: 1,
                ),
          horizontal ? Container() : Separator(),
        ],
      ),
    );

    final clubCard = Container(
      child: clubCardContent,
      height: horizontal ? 75.0 : 154.0,
      margin:
          horizontal ? EdgeInsets.only(left: 30.0) : EdgeInsets.only(top: 72.0),
      decoration: BoxDecoration(
        color: ColorConstants.workshopCardContainer,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return GestureDetector(
        onTap: () {
          print(isEntity);
          return horizontal
              ? (isEntity
                  ? Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) =>
                            EntityPage(entityId: entity.id, editMode: true),
                        transitionsBuilder: (context, animation,
                                secondaryAnimation, child) =>
                            FadeTransition(opacity: animation, child: child),
                      ),
                    )
                  : Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) =>
                            ClubPage(clubId: club.id, editMode: true),
                        transitionsBuilder: (context, animation,
                                secondaryAnimation, child) =>
                            FadeTransition(opacity: animation, child: child),
                      ),
                    ))
              : null;
        },
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 1.0,
            horizontal: 15.0,
          ),
          child: Stack(
            children: <Widget>[
              clubCard,
              isCouncil == true
                  ? councilThumbnail
                  : isEntity == true
                      ? entityThumbnail
                      : clubThumbnail,
            ],
          ),
        ));
  }

  static Future detailsDialog(
          {BuildContext context,
          String name,
          String imageUrl,
          String email,
          String phone}) =>
      showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          final dialogColor = Color(0xFFAFAFAF);
          Container details = Container(
            child: Stack(
              children: [
                Container(
                  constraints: BoxConstraints.expand(),
                  margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                  padding: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF004681),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0),
                      ),
                    ],
                  ),
                  child: ListView(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        name ?? 'No Name Available',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      ListTile(
                        onTap: () {
                          if (email != null) launch("mailto:$email");
                        },
                        leading: Icon(
                          Icons.email,
                          color: dialogColor,
                        ),
                        title: Text(
                          email ?? 'No Email Available',
                          style: TextStyle(
                            color: dialogColor,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          if (phone != null) launch("tel:$phone");
                        },
                        leading: Icon(
                          Icons.phone,
                          color: dialogColor,
                        ),
                        title: Text(
                          phone ?? 'No Phone Available',
                          style: TextStyle(
                            color: dialogColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  /*decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20.0,
                        offset:   Offset(0.0, -10.0),
                      ),
                    ],
                  ),*/
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 35.0,
                    backgroundImage: imageUrl == null || imageUrl == ''
                        ? AssetImage('assets/iitbhu.jpeg')
                        : NetworkImage(imageUrl),
                  ),
                ),
              ],
            ),
          );
          Container outerBox = Container(
            child: details,
            height: 270.0,
            color: Colors.transparent,
            margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
          );

          return Dialog(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: outerBox,
          );
        },
      );

  static Column getHeader(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xff00c6ff),
            borderRadius: BorderRadius.circular(2.0),
          ),
          margin: EdgeInsets.fromLTRB(
              MediaQuery.of(context).size.width / 2 - 12.0, 10.0, 0.0, 0.0),
          height: 4.0,
          width: 24.0,
          //color:   Color(0xff00c6ff)
        ),
      ],
    );
  }
}
