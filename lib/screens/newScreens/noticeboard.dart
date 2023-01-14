import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iit_app/data/internet_connection_interceptor.dart';
import 'package:iit_app/model/appConstants.dart';
import 'package:iit_app/model/built_post.dart';
import 'package:iit_app/screens/newScreens/noticedetail.dart';
import 'package:intl/intl.dart';

import '../../ui/entity_custom_widgets.dart';

class NoticeBoard extends StatefulWidget {
  const NoticeBoard({Key key}) : super(key: key);

  @override
  State<NoticeBoard> createState() => _NoticeBoardState();
}

class _NoticeBoardState extends State<NoticeBoard> {
  Future<BuiltList<BuiltAllNotices>> future;

  @override
  void initState() {
    future = AppConstants.getAllNoticesFromDatabase();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildAllNotices(context);
  }

  FutureBuilder buildAllNotices(BuildContext context, {Function reload}) {
    Size screensize = MediaQuery.of(context).size;
    return FutureBuilder<BuiltList<BuiltAllNotices>>(
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

          final posts = snapshot.data;
          if (posts.length == 0) {
            return Center(
              child: Text(
                'No notices at the moment',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Color(0xFF1d72df),
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ),
              ),
            );
          }

          return builtAllNotices(context, posts, reload: reload);
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
//sample[i]['date'].day >= DateTime.now().day
}

Widget builtAllNotices(BuildContext context, BuiltList<BuiltAllNotices> posts,
    {Function reload}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.5,
    child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: posts.length,
        itemBuilder: (context, item) {
          DateTime date = DateTime.tryParse(posts[item].date);
          bool isActive = date.day >= DateTime.now().day &&
              date.month >= DateTime.now().month &&
              date.year >= DateTime.now().year;
          bool isPinned = posts[item].importance > 0;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.shade50,
                    offset: const Offset(
                      1.0,
                      1.0,
                    ), //Offset
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                  ),
                ],
                color: isPinned ? Color(0xFFd1e6ff) : Color(0xFFf3f9ff),
              ),
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: Container(
                    // height: 72.0,
                    // margin: const EdgeInsets.all(4.0),
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 10, right: 0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: isPinned ? Color(0xFFd1e6ff) : Color(0xFFf3f9ff),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color:
                              isActive ? Color(0xFF00d823) : Color(0xFFff0000),
                          size: 10,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                posts[item].title,
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Color(0xFF1d72df),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Text(
                                _dateFormatter(date),
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Color(0xFF1d72df),
                                    fontWeight: FontWeight.w200,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        isPinned
                            ? Transform.rotate(
                                angle: 45,
                                child: Icon(
                                  Icons.push_pin,
                                  color: Colors.grey[800],
                                  size: 20,
                                ),
                              )
                            : const SizedBox.shrink(),
                      ],
                    ),
                  ),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              posts[item].description.length > 200
                                  ? '${posts[item].description.substring(0, 200)}...'
                                  : posts[item].description,
                              style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: TextButton(
                              onPressed: () {
                                print("Clicked");
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (_, __, ___) =>
                                        NoticeScreen(posts[item]),
                                    transitionsBuilder: (context, animation,
                                            secondaryAnimation, child) =>
                                        FadeTransition(
                                            opacity: animation, child: child),
                                  ),
                                );
                              },
                              child: Text(
                                'Read More',
                                style: TextStyle(
                                  fontFamily: 'Gilroy',
                                  fontSize: 12,
                                  color: Color(0xFF176ede),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
          // return GestureDetector(
          //   onTap: () => Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => NoticePost(posts[item].id),
          //     ),
          //   ),
          //   child: Container(
          //     height: 58.0,
          //     margin: const EdgeInsets.all(4.0),
          //     padding:
          //         const EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
          //     decoration: BoxDecoration(
          //       borderRadius: const BorderRadius.all(
          //         Radius.circular(10),
          //       ),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.blueGrey.shade50,
          //           offset: const Offset(
          //             1.0,
          //             1.0,
          //           ), //Offset
          //           blurRadius: 3.0,
          //           spreadRadius: 1.0,
          //         ),
          //       ],
          //       color: isPinned ? Color(0xFFd1e6ff) : Color(0xFFf3f9ff),
          //     ),
          //     child: Row(
          //       children: [
          //         Icon(
          //           Icons.circle,
          //           color: isActive ? Color(0xFF00d823) : Color(0xFFff0000),
          //           size: 10,
          //         ),
          //         const SizedBox(
          //           width: 10.0,
          //         ),
          //         Expanded(
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.start,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 posts[item].title,
          //                 style: GoogleFonts.montserrat(
          //                   textStyle: TextStyle(
          //                     color: Color(0xFF1d72df),
          //                     fontWeight: FontWeight.w400,
          //                     fontSize: 16,
          //                   ),
          //                 ),
          //               ),
          //               Text(
          //                 _dateFormatter(date),
          //                 style: GoogleFonts.montserrat(
          //                   textStyle: TextStyle(
          //                     color: Color(0xFF1d72df),
          //                     fontWeight: FontWeight.w200,
          //                     fontSize: 13,
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //         isPinned
          //             ? Transform.rotate(
          //                 angle: 45,
          //                 child: Icon(
          //                   Icons.push_pin,
          //                   color: Colors.grey[800],
          //                   size: 20,
          //                 ),
          //               )
          //             : const SizedBox.shrink(),
          //       ],
          //     ),
          //   ),
          // );
        }),
  );
}

_dateFormatter(DateTime date) {
  String day;
  int now = DateTime.now().day;

  if (date.day == now) {
    return 'Today';
  }
  if (date.day == now - 1) {
    return "Yesterday";
  }
  if (date.day == now + 1) {
    return "Tomorrow";
  }
  day = DateFormat('dd MMM yyyy').format(date);
  return day;
}
