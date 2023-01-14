import 'package:chopper/chopper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:iit_app/data/internet_connection_interceptor.dart';
import 'package:iit_app/model/appConstants.dart';
import 'package:iit_app/model/built_post.dart';
import 'package:iit_app/pages/worshop_detail/workshopDetailPage.dart';
import 'package:async/async.dart';
import 'package:iit_app/ui/entity_custom_widgets.dart';

import '../../ui/separator.dart';
import '../../ui/text_style.dart';

class Events extends StatefulWidget {
  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  Future<Response<BuiltAllWorkshopsPost>> future;
  final AsyncMemoizer _memoizer = AsyncMemoizer();

  @override
  void initState() {
    future = AppConstants.service.getAllWorkshops();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildAllWorkshopsBody(context);
  }

  FutureBuilder<Response> buildAllWorkshopsBody(BuildContext context,
      {Function reload}) {
    Size screensize = MediaQuery.of(context).size;
    return FutureBuilder<Response<BuiltAllWorkshopsPost>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            if (snapshot.error is InternetConnectionException) {
              AppConstants.internetErrorFlushBar.showFlushbar(context);
            }
            return Center(
              child: Text(
                snapshot.error.toString(),
                textAlign: TextAlign.center,
                textScaleFactor: 1.3,
              ),
            );
          }

          final posts = snapshot.data.body;

          return builtAllWorkshopsBodyPosts(context, posts, reload: reload);
        } else {
          return Container(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: EntityCustomWidgets.getPlaceholder(),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}

Widget builtAllWorkshopsBodyPosts(
    BuildContext context, BuiltAllWorkshopsPost posts,
    {Function reload}) {
  return ListView(
    children: [
      ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: posts.active_workshops.length >= 5
            ? 5
            : posts.active_workshops.length,
        padding: EdgeInsets.only(top: 1.0, right: 10.0),
        itemBuilder: (context, index) {
          final w = posts.active_workshops[index];
          final bool isClub = w.club != null;
          var logoFile;
          if (isClub)
            logoFile = AppConstants.getImageFile(w.club.small_image_url);
          else
            logoFile = AppConstants.getImageFile(w.entity.small_image_url);
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) =>
                      WorkshopDetailPage(w.id, workshop: w, isPast: false),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          FadeTransition(opacity: animation, child: child),
                ),
              );
              // .then((value) => reload());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: EventCard(
                time: w.time,
                date: w.date,
                title: w.title,
                club: '${isClub ? w.club.name : w.entity.name}',
                image: isClub
                    ? (w.club.small_image_url == null ||
                            w.club.small_image_url == ''
                        ? AssetImage('assets/iitbhu.jpeg')
                        : logoFile == null
                            ? NetworkImage(w.club.small_image_url)
                            : FileImage(logoFile))
                    : (w.entity.small_image_url == null ||
                            w.entity.small_image_url == ''
                        ? AssetImage('assets/iitbhu.jpeg')
                        : logoFile == null
                            ? NetworkImage(w.entity.small_image_url)
                            : FileImage(logoFile)),
                eventstatus: true,
              ),
            ),
          );
        },
      ),
      ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 5 - posts.active_workshops.length,
        padding: EdgeInsets.only(top: 1.0, right: 10.0),
        itemBuilder: (context, index) {
          final w = posts.past_workshops[index];
          final bool isClub = w.club != null;
          var logoFile;
          if (isClub)
            logoFile = AppConstants.getImageFile(w.club.small_image_url);
          else
            logoFile = AppConstants.getImageFile(w.entity.small_image_url);
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) =>
                      WorkshopDetailPage(w.id, workshop: w, isPast: true),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          FadeTransition(opacity: animation, child: child),
                ),
              );
              // .then((value) => reload());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: EventCard(
                time: w.time,
                date: w.date,
                title: w.title,
                club: '${isClub ? w.club.name : w.entity.name}',
                image: isClub
                    ? (w.club.small_image_url == null ||
                            w.club.small_image_url == ''
                        ? AssetImage('assets/iitbhu.jpeg')
                        : logoFile == null
                            ? NetworkImage(w.club.small_image_url)
                            : FileImage(logoFile))
                    : (w.entity.small_image_url == null ||
                            w.entity.small_image_url == ''
                        ? AssetImage('assets/iitbhu.jpeg')
                        : logoFile == null
                            ? NetworkImage(w.entity.small_image_url)
                            : FileImage(logoFile)),
                eventstatus: false,
              ),
            ),
          );
        },
      ),
    ],
  );
}

class EventCard extends StatelessWidget {
  const EventCard({
    this.title,
    this.date,
    this.time,
    this.club,
    this.image,
    this.eventstatus,
  });

  final ImageProvider<Object> image;
  final String title;
  final String time;
  final String date;
  final String club;
  final bool eventstatus;
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    var cardwidth = kIsWeb ? 200 : screensize.width;
    var cardheight = kIsWeb ? 200 : screensize.height * 0.155;
    return Container(
      height: cardheight * 1.2,
      width: cardwidth * 1.5,
      margin: EdgeInsets.only(left: 1.0, right: 1.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              margin: EdgeInsets.only(left: 60.0, right: 1.0),
              height: cardheight,
              width: cardwidth,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: const Offset(
                      1.0,
                      1.0,
                    ), //Offset
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(20.0),
              ),
              constraints: BoxConstraints.expand(),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(height: 4.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(title, style: Style.titleTextStyle),
                    ),
                    Container(height: 8.0),
                    Text(club, style: Style.commonTextStyle),
                    Separator(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: _workshopValue(
                                  value: date, icon: Icons.date_range)),
                          Container(
                            width: screensize.width * 0.1,
                          ),
                          time == null
                              ? SizedBox(height: 1)
                              : Expanded(
                                  flex: 1,
                                  child: _workshopValue(
                                      value: time, icon: Icons.timer))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 92.0,
              width: 92.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(fit: BoxFit.contain, image: image),
              ),
            ),
          ),
          if (eventstatus == true)
            Positioned(
              top: 0.0,
              right: 0.0,
              child: EventOnline(),
            ),
        ],
      ),
    );
  }
}

class EventOnline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15.0,
      width: 15.0,
      decoration:
          BoxDecoration(color: Color(0xFF00d823), shape: BoxShape.circle),
    );
  }
}

Widget _workshopValue({String value, IconData icon}) {
  return Container(
    child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Icon(icon, color: Color(0xff176EDE), size: 12.0),
      Container(),
      Text(value, style: Style.smallTextStyle),
    ]),
  );
}
