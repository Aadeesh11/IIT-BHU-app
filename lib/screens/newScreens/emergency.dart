import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../model/appConstants.dart';
import '../../model/colorConstants.dart';

final List<String> Names = [
  'Ambulance',
  'Proctor Office',
  'Security Convenor',
  'Counselor',
];

final List<String> Positions = [null, null, null, null];

final List<String> Pics = [
  'assets/ambulance.png',
  'assets/police.png',
  'assets/shield.png',
  'assets/counselor.png',
];

final List<String> Numbers = [
  '+91 54223 09259',
  '+91 542 236 9134',
  '+91 96712 14347',
  '+91 75240 53214'
];

class Emergency extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textTheme: TextTheme(
          headline6: TextStyle(fontFamily: 'Gilroy'),
          headline1: TextStyle(fontFamily: 'Gilroy'),
          headline2: TextStyle(fontFamily: 'Gilroy'),
          headline3: TextStyle(fontFamily: 'Gilroy'),
          headline4: TextStyle(fontFamily: 'Gilroy'),
          headline5: TextStyle(fontFamily: 'Gilroy'),
          bodyText1: TextStyle(fontFamily: 'Gilroy'),
          bodyText2: TextStyle(fontFamily: 'Gilroy'),
          subtitle1: TextStyle(fontFamily: 'Gilroy'),
          button: TextStyle(fontFamily: 'Gilroy'),
          caption: TextStyle(fontFamily: 'Gilroy'),
          overline: TextStyle(fontFamily: 'Gilroy'),
          subtitle2: TextStyle(fontFamily: 'Gilroy'),
        ),
      ),
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            backgroundColor: ColorConstants.grievanceBtn,
            automaticallyImplyLeading: false,
            leading: IconButton(
              color: ColorConstants.grievanceLabelText,
              iconSize: 30,
              icon: Icon(Icons.arrow_back_ios_new_rounded),
              onPressed: () async {
                Navigator.of(context).pop();
              },
            ),
            title: Text(
              'Emergency',
              style: TextStyle(
                  color: ColorConstants.grievanceBack,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            actions: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 10),
                        height: 35.0,
                        width: 35.0,
                        child: Builder(builder: (context) => Container()),
                        decoration: AppConstants.isGuest
                            ? BoxDecoration()
                            : BoxDecoration(
                                image: DecorationImage(
                                    image: AppConstants.currentUser == null ||
                                            AppConstants
                                                    .currentUser.photo_url ==
                                                ''
                                        ? AssetImage('assets/guest.png')
                                        : NetworkImage(
                                            AppConstants.currentUser.photo_url),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          body: GridView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            itemCount: Names.length,
            itemBuilder: (context, index) => EmergencyTile(
                pic: Pics[index],
                name: Names[index],
                number: Numbers[index],
                position: Positions[index]),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: kIsWeb ? 4 : 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 20.0,
              childAspectRatio: MediaQuery.of(context).size.height / 1300,
            ),
          )),
    );
  }
}

class EmergencyTile extends StatelessWidget {
  const EmergencyTile({
    this.pic,
    this.name,
    this.position,
    this.number,
    this.club,
  });

  final String pic;
  final String name;
  final String position;
  final String club;
  final String number;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch('tel:' + number),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xffD7F2FF), Color(0xFFd6e0f9)],
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 150.0,
              decoration: BoxDecoration(
                  color: Color(0xFFd1e6ff),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(pic), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Divider(),
            if (position != null)
              Text(position,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
            if (position != null)
              SizedBox(
                height: 10.0,
              ),
            Text(number,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
