import 'package:flutter/material.dart';
import 'package:iit_app/external_libraries/spin_kit.dart';
import 'package:iit_app/model/built_post.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key key,
    @required this.profileDetails,
    @required this.asyncInputDialog,
    @required this.updateProfileDetails,
    @required this.cancelClubSubscriptions,
    @required this.cancelEntitySubscriptions,
  }) : super(key: key);

  final BuiltProfilePost profileDetails;
  final Function(BuildContext, String, String) asyncInputDialog;
  final Function(String, String) updateProfileDetails;
  final Function cancelClubSubscriptions;
  final Function cancelEntitySubscriptions;

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Color primaryColor = Color(0xFF176EDE);
  Color bgColor = Color(0xFFFFFFFF);
  Color secondaryColor = Color(0xFFBBD9FF);
  Color containerColor = Color(0xFFF3F9FF);
  //double primaryFont=M

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: (widget.profileDetails == null)
            ? Container(
                height: MediaQuery.of(context).size.height / 4,
                child: Center(
                  child: LoadingCircle,
                ),
              )
            : Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width,
                      color: primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  height: 110.0,
                                  width: 110.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: (widget.profileDetails.photo_url ==
                                                  null ||
                                              widget.profileDetails.photo_url ==
                                                  '')
                                          ? AssetImage('assets/AMC.png')
                                          : NetworkImage(
                                              widget.profileDetails.photo_url),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.circle,
                                    //borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                    border: Border.all(
                                        color: Colors.white, width: 2.0),
                                  ),
                                ),
                                // Positioned(
                                //     top: 5,
                                //     right: 0,
                                //     child: InkWell(
                                //       onTap: () async {
                                //         final name =
                                //             await widget.asyncInputDialog(
                                //                 context,
                                //                 'Name',
                                //                 widget.profileDetails.name);
                                //         print(name);
                                //         widget.updateProfileDetails(name,
                                //             widget.profileDetails.phone_number);
                                //       },
                                //       child: Container(
                                //         height: 25,
                                //         width: 25,
                                //         decoration: BoxDecoration(
                                //             color: Colors.white,
                                //             shape: BoxShape.circle),
                                //         child: Center(
                                //             child: Icon(
                                //           Icons.edit_rounded,
                                //           color: primaryColor,
                                //           size: 16,
                                //         )),
                                //       ),
                                //     ))
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      widget.profileDetails.name,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      final name =
                                          await widget.asyncInputDialog(
                                              context,
                                              'Name',
                                              widget.profileDetails.name);
                                      widget.updateProfileDetails(name,
                                          widget.profileDetails.phone_number);
                                    },
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                      child: Center(
                                          child: Icon(
                                        Icons.edit_rounded,
                                        color: primaryColor,
                                        size: 16,
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //     Text(
                            //       'Roll Number',
                            //       style: TextStyle(
                            //           fontWeight: FontWeight.w500,
                            //           color: secondaryColor,
                            //           fontSize: 14),
                            //     ),
                            //     SizedBox(width: 8),
                            //     InkWell(
                            //       onTap: () async {
                            //         final rollno = await widget.asyncInputDialog(
                            //             context, 'Roll No.', '');
                            //         print(rollno);
                            //         showSnackBar(
                            //             context,
                            //             'This feature is currently under development',
                            //             primaryColor,
                            //             bgColor);
                            //         // widget.updateProfileDetails(
                            //         //     widget.profileDetails.name, phoneNumber,rollno);
                            //       },
                            //       child: Container(
                            //         height: 15,
                            //         width: 15,
                            //         decoration: BoxDecoration(
                            //             color: Colors.white,
                            //             shape: BoxShape.circle),
                            //         child: Center(
                            //             child: Icon(
                            //           Icons.edit_rounded,
                            //           size: 10,
                            //           color: primaryColor,
                            //         )),
                            //       ),
                            //     )
                            //   ],
                            // ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.profileDetails.email,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: secondaryColor,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              widget.profileDetails.department,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: secondaryColor,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //   //   Text(
                            //   //     widget.profileDetails.phone_number==null || widget.profileDetails.phone_number.isEmpty
                            //   //         ? 'Phone No. not provided'
                            //   //         : widget.profileDetails.phone_number,
                            //   //     style: TextStyle(
                            //   //         fontWeight: FontWeight.w500,
                            //   //         color: secondaryColor,
                            //   //         fontSize: 14),
                            //   //   ),
                            //   //   SizedBox(
                            //   //     width: 10,
                            //   //   ),
                            //   //   InkWell(
                            //   //     onTap: () async {
                            //   //       final phoneNumber =
                            //   //           await widget.asyncInputDialog(
                            //   //               context,
                            //   //               'Phone No.',
                            //   //               widget.profileDetails.phone_number ==
                            //   //                       ''
                            //   //                   ? '+91'
                            //   //                   : widget
                            //   //                       .profileDetails.phone_number);
                            //   //       print(phoneNumber);
                            //   //       widget.updateProfileDetails(
                            //   //           widget.profileDetails.name, phoneNumber);
                            //   //     },
                            //   //     child: Container(
                            //   //       height: 15,
                            //   //       width: 15,
                            //   //       decoration: BoxDecoration(
                            //   //           color: Colors.white,
                            //   //           shape: BoxShape.circle),
                            //   //       child: Center(
                            //   //           child: Icon(
                            //   //         Icons.edit_rounded,
                            //   //         size: 10,
                            //   //         color: primaryColor,
                            //   //       )),
                            //   //     ),
                            //   //   )
                            //   // ],
                            // ),
                            SizedBox(
                              height: 10,
                            ),

                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "PoRs",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          _buildPors(context),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          _buildFollowing(context),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  Widget _buildPors(BuildContext context) {
    int clubPrivileges = widget.profileDetails.club_privileges.length;
    int entityPrivileges = widget.profileDetails.entity_privileges.length;
    return (clubPrivileges + entityPrivileges == 0)
        ? Container(
            // If User does not have PoRs.
            child: Text(
              'You don\'t have any PoRs',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: primaryColor,
              ),
            ),
          )
        : GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 10,
              childAspectRatio: MediaQuery.of(context).size.height / 1200,
            ),
            padding: EdgeInsets.all(4),
            itemCount: clubPrivileges + entityPrivileges,
            itemBuilder: (context, index) {
              bool showingClubPrivileges = !(index >= clubPrivileges);
              return Container(
                //padding: EdgeInsets.only(top: 4, bottom: 4),
                height: 100.0,
                width: 100.0,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        height: 90.0,
                        width: 90.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: (showingClubPrivileges)
                                ? (widget.profileDetails.club_privileges[index]
                                            .council.small_image_url !=
                                        null
                                    ? NetworkImage(
                                        widget
                                            .profileDetails
                                            .club_privileges[index]
                                            .council
                                            .small_image_url,
                                      )
                                    : AssetImage('assets/iitbhu.jpeg'))
                                : NetworkImage(
                                    widget
                                        .profileDetails
                                        .entity_privileges[
                                            index - clubPrivileges]
                                        .small_image_url,
                                  ),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(color: primaryColor, width: 1.4),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      (showingClubPrivileges)
                          ? widget.profileDetails.club_privileges[index].name
                          : widget.profileDetails.entity_privileges[index].name,
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                    Divider(),
                    Text(
                        (showingClubPrivileges)
                            ? widget.profileDetails.club_privileges[index]
                                .council.name
                            : widget
                                .profileDetails.entity_privileges[index].name,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: primaryColor,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center)
                  ],
                ),
              );
            });
  }

  Widget _buildFollowing(BuildContext context) {
    int clubSubscriptions = widget.profileDetails.club_subscriptions.length;
    int entitySubscriptions = widget.profileDetails.entity_subscriptions.length;

    // debugPrint(widget.profileDetails.club_subscriptions.toString());
    return (clubSubscriptions + entitySubscriptions == 0)
        ? Container(
            // If the User does not have any subscriptions.
            child: Text(
              'You don\'t have any subscriptions',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: primaryColor,
              ),
            ),
          )
        : GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 8,
              childAspectRatio: MediaQuery.of(context).size.height / 1200,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(4),
            itemCount: clubSubscriptions + entitySubscriptions,
            itemBuilder: (context, index) {
              bool showingClubSubscriptions = !(index >= clubSubscriptions);
              int entityIndex = index - clubSubscriptions;
              return Container(
                // padding: EdgeInsets.only(top: 4),
                height: 100.0,
                width: 100.0,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: (showingClubSubscriptions)
                                  ? ((widget
                                              .profileDetails
                                              .club_subscriptions[index]
                                              .council
                                              .small_image_url ==
                                          null)
                                      ? AssetImage('assets/iitbhu.jpeg')
                                      : NetworkImage(
                                          widget
                                              .profileDetails
                                              .club_subscriptions[index]
                                              .council
                                              .small_image_url,
                                        ))
                                  : NetworkImage(
                                      widget
                                          .profileDetails
                                          .entity_subscriptions[entityIndex]
                                          .small_image_url,
                                    ),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(color: primaryColor, width: 1.4),
                          ),
                        ),
                        Positioned(
                          top: 1,
                          right: 3,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: GestureDetector(
                              onTap: () async {
                                _onLoading(context, showingClubSubscriptions,
                                    index, entityIndex);
                                (showingClubSubscriptions)
                                    ? await widget.cancelClubSubscriptions(
                                        widget.profileDetails
                                            .club_subscriptions[index].id)
                                    : await widget.cancelEntitySubscriptions(
                                        widget
                                            .profileDetails
                                            .entity_subscriptions[entityIndex]
                                            .id);
                              },
                              child: Icon(
                                Icons.cancel,
                                color: secondaryColor,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      (showingClubSubscriptions)
                          ? widget.profileDetails.club_subscriptions[index].name
                          : widget.profileDetails
                              .entity_subscriptions[entityIndex].name,
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      (showingClubSubscriptions)
                          ? widget.profileDetails.club_subscriptions[index]
                              .council.name
                          : "",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    )
                  ],
                ),
              );
            });
  }

  _onLoading(BuildContext context, bool showingClubSubscriptions, int index,
      int entityIndex) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 5,
                ),
                Text(
                  "Unfollowing...",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      decorationStyle: TextDecorationStyle.solid,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        );
      },
    );
    (showingClubSubscriptions)
        ? await widget.cancelClubSubscriptions(
            widget.profileDetails.club_subscriptions[index].id, context)
        : await widget.cancelEntitySubscriptions(
            widget.profileDetails.entity_subscriptions[entityIndex].id,
            context);

    Navigator.pop(context);
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(Icons.arrow_back_ios_rounded),
        color: secondaryColor,
        iconSize: 30,
      ),
      title: Text(
        'Profile',
        style: TextStyle(
          color: secondaryColor,
          fontWeight: FontWeight.w500,
          fontSize: 23,
        ),
      ),
      // actions: [
      //   IconButton(
      //     onPressed: () {},
      //     icon: Icon(Icons.edit_rounded),
      //     color: secondaryColor,
      //   ),
      //   IconButton(onPressed: () {}, icon: Icon(Icons.doorbell_rounded))
      // ],
    );
  }
}
