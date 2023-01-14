import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iit_app/external_libraries/spin_kit.dart';
import 'package:iit_app/model/appConstants.dart';

class ContactsScreen extends StatefulWidget {
  // const ContactsScreen({Key? key}) : super(key: key);

  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  Color primaryColor = Color(0xFF176EDE);
  Color bgColor = Color(0xFFFFFFFF);
  Color secondaryColor = Color(0xFFBBD9FF);
  Color containerColor = Color(0xFFF4F9FF);

  List contacts = [
    {
      "Name": "Name Surname",
      "designation": "(V.P.)",
      "phone": "+91 12345 67890"
    },
    {
      "Name": "Name Surname",
      "designation": "(V.P.)",
      "phone": "+91 12345 67890"
    },
    {
      "Name": "Name Surname",
      "designation": "(V.P.)",
      "phone": "+91 12345 67890"
    },
    {
      "Name": "Name Surname",
      "designation": "(A.V.P.)",
      "phone": "+91 12345 67890"
    },
    {
      "Name": "Name Surname",
      "designation": "(V.P.)",
      "phone": "+91 12345 67890"
    },
    {
      "Name": "Name Surname",
      "designation": "(A.V.P.)",
      "phone": "+91 12345 67890"
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      body: FutureBuilder<Object>(
          future: getContacts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              contacts = snapshot.data as List;
              return GridView.builder(
                  // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // crossAxisCount: 2, mainAxisSpacing: 30.0, crossAxisSpacing: 0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.6),
                  ),
                  itemCount: contacts.length,
                  itemBuilder: (context, index) {
                    return contactDetails(size, contacts[index]);
                  });
            } else {
              return Center(
                child: LoadingCircle,
              );
            }
          }),
    );
  }

  getContacts() async {
    final response = await AppConstants.service.getParliamentContacts();

    print("The contacts are - ${response.body}");

    return response.body;
  }

  Column contactDetails(Size size, contact) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: size.width * 0.35,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: containerColor,
              boxShadow: [
                BoxShadow(
                    color: secondaryColor.withOpacity(0.5),
                    blurRadius: 1,
                    spreadRadius: 1)
              ]),
          child: Center(
            child: Container(
              height: size.width * 0.25,
              width: size.width * 0.25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(contact["profile"]["photo_url"]),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          contact["profile"]["name"] ?? "",
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              fontSize: 15, fontWeight: FontWeight.w600, color: primaryColor),
        ),
        Text(
          contact['designation'] ?? "",
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              fontSize: 15, fontWeight: FontWeight.w600, color: primaryColor),
        ),
        Text(
          contact['phone'] ?? "",
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              fontSize: 15, fontWeight: FontWeight.bold, color: primaryColor),
        ),
      ],
    );
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
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Contacts',
            style: GoogleFonts.lato(
              color: secondaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 23,
            ),
          ),
          SizedBox(
            width: 25,
          ),
          Container(
            padding: EdgeInsets.all(8),
            height: 35.0,
            width: 35.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: (AppConstants.currentUser == null ||
                        AppConstants.isGuest == true ||
                        AppConstants.currentUser.photo_url == '')
                    ? AssetImage('assets/guest.png')
                    : NetworkImage(AppConstants.currentUser.photo_url),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              border: Border.all(color: Colors.blueGrey, width: 2.0),
            ),
          )
        ],
      ),
    );
  }
}
