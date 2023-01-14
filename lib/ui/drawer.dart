import 'package:flutter/material.dart';
import 'package:iit_app/model/appConstants.dart';
import 'package:iit_app/model/built_post.dart';
import 'package:iit_app/model/colorConstants.dart';
import 'package:iit_app/pages/newHomePage/newHomePage.dart';
import 'package:iit_app/ui/dialogBoxes.dart';
import 'package:iit_app/pages/club_entity/entityPage.dart';
import 'package:iit_app/ui/text_style.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:built_collection/built_collection.dart';
import 'package:iit_app/services/authentication.dart' as authentication;

// TODO: when user click on list tile, navigation stack keeps filling,

class SideBar extends Drawer {
  final BuildContext context;
  SideBar({@required this.context});

  ListTile getNavItem(IconData icon, String s, String routeName,
      {bool homeRoute = false}) {
    return ListTile(
      leading: Icon(icon, color: ColorConstants.textColor),
      title: Text(s,
          style: Style.baseTextStyle.copyWith(color: ColorConstants.textColor)),
      onTap: () {
        // pop closes the drawer
        Navigator.of(context).pop();
        // navigate to the route

        if (homeRoute) {
          Navigator.popUntil(context, ModalRoute.withName('/root'));
        }

        Navigator.of(context).pushNamed(routeName);
      },
    );
  }

  onResetDatabase() async {
    await AppConstants.deleteAllLocalDataWithImages();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => NewHomePage()),
        ModalRoute.withName('/root'));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: ColorConstants.backgroundThemeColor,
        child: ListView(
          children: <Widget>[
            Material(
              elevation: 2,
              color: ColorConstants.shimmerSkeletonColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: (AppConstants.currentUser == null ||
                                  AppConstants.isGuest == true ||
                                  AppConstants.currentUser.photo_url == '')
                              ? AssetImage('assets/guest.png')
                              : NetworkImage(
                                  AppConstants.currentUser.photo_url),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        border: Border.all(color: Colors.blueGrey, width: 2.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: AppConstants.isGuest
                          ? Text(
                              'Welcome',
                              style: Style.titleTextStyle
                                  .copyWith(color: ColorConstants.textColor),
                            )
                          : Text(
                              AppConstants.currentUser.name,
                              style: Style.titleTextStyle
                                  .copyWith(color: ColorConstants.textColor),
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: AppConstants.isGuest
                          ? Text(
                              'Guest User',
                              style: Style.baseTextStyle
                                  .copyWith(color: ColorConstants.textColor),
                            )
                          : Text(
                              AppConstants.currentUser.email,
                              style: Style.baseTextStyle
                                  .copyWith(color: ColorConstants.textColor),
                            ),
                    ),
                  ],
                ),
              ),
            ),

            getNavItem(Icons.home, "Home", '/home'),

            getNavItem(Icons.map, "Map", '/mapPage'),
            // getNavItem(Icons.local_dining, "Mess management", '/mess'),
            getNavItem(
                Icons.group_work, "All Workshops and Events", '/allWorkshops'),
            getNavItem(Icons.work_rounded, 'All Entities and Councils',
                '/allEntities'),
            getNavItem(Icons.restaurant, 'Mess', '/future'),

            getNavItem(Icons.chrome_reader_mode_rounded, "Academics",
                '/academicsPage'),
            _getActiveEntities(),
            getNavItem(Icons.house_rounded, "Parliament", "/parliamentPage"),

            AppConstants.isGuest
                ? ListTile(
                    title: Text("Profile",
                        style: Style.baseTextStyle
                            .copyWith(color: ColorConstants.textColor)),
                    leading: Icon(Icons.account_box,
                        color: ColorConstants.textColor),
                    // TODO: ask user to log in , may be in a dialog box

                    onTap: () {
                      Navigator.pop(context);
                      return ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(
                        duration: Duration(seconds: 2),
                        content: Text(
                          "You must be logged in!",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                        backgroundColor: Color(0xFFBBD9FF).withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        elevation: 5,
                      ));
                    },
                  )
                : getNavItem(Icons.account_box, "Profile", '/profile'),
            // getNavItem(Icons.comment, "Complaints & Suggestions", '/complaints'),
            AppConstants.isGuest
                ? ListTile(
                    title: Text("Grievances",
                        style: Style.baseTextStyle
                            .copyWith(color: ColorConstants.textColor)),
                    leading: Icon(Icons.account_box,
                        color: ColorConstants.textColor),
                    // TODO: ask user to log in , may be in a dialog box

                    onTap: () {
                      Navigator.pop(context);
                      return ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(
                        duration: Duration(seconds: 2),
                        content: Text(
                          "You must be logged in!",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                        backgroundColor: Color(0xFFBBD9FF).withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        elevation: 5,
                      ));
                    },
                  )
                : getNavItem(Icons.comment, "Grievances", '/grievance'),
            AppConstants.isGuest
                ? ListTile(
                    title: Text("Lost And Found",
                        style: Style.baseTextStyle
                            .copyWith(color: ColorConstants.textColor)),
                    leading: Icon(Icons.account_box,
                        color: ColorConstants.textColor),
                    // TODO: ask user to log in , may be in a dialog box

                    onTap: () {
                      Navigator.pop(context);
                      return ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(
                        duration: Duration(seconds: 2),
                        content: Text(
                          "You must be logged in!",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                        backgroundColor: Color(0xFFBBD9FF).withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        elevation: 5,
                      ));
                    },
                  )
                : getNavItem(
                    Icons.search_off, "Lost And Found", '/lostAndFound'),
            getNavItem(Icons.warning_rounded, "Emergency", '/emergency'),
            ListTile(
              leading: Icon(
                  AppConstants.isGuest
                      ? Icons.login_rounded
                      : Icons.logout_rounded,
                  color: ColorConstants.textColor),
              title: AppConstants.isGuest
                  ? Text('Log In',
                      style: Style.baseTextStyle
                          .copyWith(color: ColorConstants.textColor))
                  : Text('Log Out',
                      style: Style.baseTextStyle
                          .copyWith(color: ColorConstants.textColor)),
              onTap: () async {
                if (!AppConstants.isGuest) {
                  bool result = await getLogoutDialog(context, [
                    AppConstants.currentUser.photo_url == ''
                        ? AssetImage('assets/guest.png')
                        : NetworkImage(AppConstants.currentUser.photo_url),
                    AppConstants.currentUser.name,
                  ]);
                  if (result == true) {
                    await authentication.signOutGoogle();
                    await AppConstants.deleteLocalDatabaseOnly();
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    await prefs.clear();
                    AppConstants.isGuest = false;
                    // Navigator.of(context).pushReplacementNamed('/login');
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil('/login', (route) => false);
                  }
                } else {
                  await AppConstants.deleteLocalDatabaseOnly();
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.clear();
                  AppConstants.isGuest = false;
                  // Navigator.of(context).pushReplacementNamed('/login');
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/login', (route) => false);
                }
              },
            ),
            getNavItem(Icons.info, "About", '/about'),
            ListTile(
              leading: Icon(Icons.restart_alt_rounded,
                  color: ColorConstants.textColor),
              title: Text("Reset Saved Data",
                  style: Style.baseTextStyle
                      .copyWith(color: ColorConstants.textColor)),
              onTap: onResetDatabase,
            ),
          ],
        ),
      ),
    );
  }

  Widget _getActiveEntities() {
    BuiltList<EntityListPost> entities = AppConstants
        .entitiesSummaryFromDatabase
        ?.where((entity) => entity.is_highlighted == true)
        ?.toBuiltList();
    return entities!=null ?  
    ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: entities.length,
        itemBuilder: (context, index) {
          // if (!entities[index].is_permanent && entities[index].is_active){
          return ListTile(
            leading: Icon(
              Icons.new_releases,
              color: Colors.yellow,
            ),
            title: Text(
              entities[index].name,
              style:
                  Style.baseTextStyle.copyWith(color: ColorConstants.textColor),
            ),
            onTap: () {
              Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, __, ___) =>
                      EntityPage(entityId: entities[index].id)));
            },
          )
          ;
          // }
        }):Container();
        ;
  }
}
