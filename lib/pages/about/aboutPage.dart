import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:iit_app/data/internet_connection_interceptor.dart';
import 'package:iit_app/external_libraries/spin_kit.dart';
import 'package:iit_app/external_libraries/url_launcher.dart';
import 'package:iit_app/model/appConstants.dart';
import 'package:iit_app/model/built_post.dart';
import 'package:iit_app/model/colorConstants.dart';
import 'package:iit_app/ui/drawer.dart';
import 'package:iit_app/ui/text_style.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  var teamData;

  @override
  void initState() {
    fetchTeamDetails();
    super.initState();
  }

  void fetchTeamDetails() async {
    try {
      Response<BuiltList<BuiltTeamMemberPost>> snapshots =
          await AppConstants.service.getTeam();
      // print(snapshots.body);
      teamData = snapshots.body;
      setState(() {});
    } on InternetConnectionException catch (_) {
      AppConstants.internetErrorFlushBar.showFlushbar(context);
    } catch (err) {
      print(err);
    }
  }

  final space = SizedBox(height: 8.0);

  Widget template({String imageUrl, String name, String desg}) {
    return Expanded(
      child: Container(
          child: Wrap(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              space,
              Center(
                  child: CircleAvatar(
                backgroundImage: imageUrl == null || imageUrl == ''
                    ? AssetImage('assets/AMC.png')
                    : NetworkImage(imageUrl),
                radius: 30.0,
                backgroundColor: Colors.transparent,
              )),
              ListTile(
                title: Text(
                  name,
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  desg,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ],
      )),
    );
  }

  showImage(String photoUrl) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: photoUrl == ''
                    ? AssetImage('assets/AMC.png')
                    : NetworkImage(photoUrl),
              )),
            ),
          );
        });
  }

  final divide = Divider(
      height: 8.0,
      thickness: 2.0,
      color: ColorConstants.circularRingBackground);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(2.0),
      child: Scaffold(
        backgroundColor: ColorConstants.backgroundThemeColor,
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
            'About Us',
            style: TextStyle(
                fontFamily: 'Gilroy',
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
                                          AppConstants.currentUser.photo_url ==
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
        drawer: SideBar(context: context),
        body: teamData == null
            ? Container(
                height: MediaQuery.of(context).size.height / 4,
                child: Center(
                  child: LoadingCircle,
                ),
              )
            : ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: teamData.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorConstants.workshopContainerBackground),
                    padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      //scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                padding: EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      teamData[index].role,
                                      style: Style.headingStyle.copyWith(
                                          color: ColorConstants.textColor),
                                    ),
                                    divide,
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: teamData[index].team_members.length,
                            itemBuilder: (context, index2) {
                              String _photoUrl;
                              _photoUrl = teamData[index]
                                              .team_members[index2]
                                              .github_image_url ==
                                          null ||
                                      teamData[index]
                                              .team_members[index2]
                                              .github_image_url ==
                                          ''
                                  ? ''
                                  : teamData[index]
                                      .team_members[index2]
                                      .github_image_url;
                              return ListTile(
                                leading: GestureDetector(
                                  onTap: () {
                                    showImage(_photoUrl);
                                  },
                                  child: Container(
                                    height: 50.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: _photoUrl == ''
                                              ? AssetImage('assets/AMC.png')
                                              : NetworkImage(_photoUrl),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30.0)),
                                        border: Border.all(
                                            color: ColorConstants
                                                .circularRingBackground,
                                            width: 2.0)),
                                  ),
                                ),
                                title: Container(
                                  child: GestureDetector(
                                    onTap: () => openGithub(teamData[index]
                                        .team_members[index2]
                                        .github_username),
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: ColorConstants
                                                .circularRingBackground,
                                            width: 2.0),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      color:
                                          ColorConstants.workshopCardContainer,
                                      child: Container(
                                        height: 50.0,
                                        child: Center(
                                          child: Text(
                                            teamData[index]
                                                .team_members[index2]
                                                .name,
                                            style: Style.titleTextStyle,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                trailing: GestureDetector(
                                  onTap: () => openGithub(teamData[index]
                                      .team_members[index2]
                                      .github_username),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.orange,
                                          width: 1.5,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(23)),
                                    child: CircleAvatar(
                                      radius: 22,
                                      backgroundImage:
                                          AssetImage('assets/githubLogo1.png'),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0.0,
          child: Container(
            color: Colors.grey[300],
            height: 50.0,
            child: Center(
              child: Text('Made with ❤️ by COPS', style: Style.baseTextStyle),
            ),
          ),
        ),
      ),
    );
  }
}
