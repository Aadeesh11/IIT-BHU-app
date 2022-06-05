import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../model/built_post.dart';
import '../../ui/text_style.dart';

class NoticeScreen extends StatelessWidget {
  BuiltAllNotices post;
  NoticeScreen(this.post);

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.tryParse(post.date ?? '2022-01-02T01:11:19+05:30');
    return Scaffold(
      body: ColorfulSafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 8),
                child: Text(post.title ?? 'Notice Title',
                    style: Style.headerTextStyle),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              _dateFormatter(date),
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Color(0xFF1d72df),
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 8.0),
              height: 1.0,
              width: MediaQuery.of(context).size.width * 0.75,
              color: new Color(0xff00c6ff),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  post.description ?? 'Description couldn\'t load!!!',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
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
  day = DateFormat('dd MMM yyyy / EEEE').format(date);
  return day;
}
