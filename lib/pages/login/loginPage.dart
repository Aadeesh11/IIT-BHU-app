import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iit_app/external_libraries/spin_kit.dart';
import 'package:iit_app/model/appConstants.dart';
import 'package:iit_app/model/deprecatedWidgetsStyle.dart';
import 'package:iit_app/model/sharedPreferenceKeys.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../services/authentication.dart' as authentication;

class LoginPage extends StatefulWidget {
  static Future guestLoginSetup() async {
    AppConstants.isGuest = true;
    AppConstants.djangoToken = null;
    //saving guest mode in shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
    prefs = await SharedPreferences.getInstance();
    prefs.setBool(SharedPreferenceKeys.isGuest, true);
  }

  @override
  _LoginPageState createState() => new _LoginPageState();
}

void errorDialog(BuildContext context) {
  AppConstants.logInButtonEnabled = true;
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Center(child: Text('OOPS....')),
      titlePadding: EdgeInsets.all(15),
      content: InkWell(
        splashColor: Colors.red,
        onTap: () {
          Navigator.of(context).pushReplacementNamed('/login');
        },
        child: Container(
          height: 175,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/sorry.png'),
              Text('Sign in failed.'),
            ],
          ),
        ),
      ),
    ),
    barrierDismissible: true,
  );
}

class _LoginPageState extends State<LoginPage> {
  bool _loading;
  @override
  void initState() {
    this._loading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return SafeArea(
      minimum: const EdgeInsets.all(2.0),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: _loading
            ? Center(child: LoadingCircle)
            : ListView(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/COPS.png'),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            color: Colors.black,
                            spreadRadius: 2,
                            blurRadius: 2,
                          )
                        ]),
                        child: CircleAvatar(
                          radius: 140,
                          backgroundImage:
                              AssetImage('assets/LoginPageImage.jpg'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        ' Welcome to IIT(BHU) ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.halant(
                            shadows: [
                              Shadow(
                                color: Colors.black,
                                offset: Offset(1.0, 1.0),
                                blurRadius: 1,
                              )
                            ],
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: OutlinedButton(
                      style: outlineButtonStyle.copyWith(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                        ),
                        side: MaterialStateProperty.resolveWith<BorderSide>(
                            (states) {
                          if (states.contains(MaterialState.pressed))
                            return BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                              width: 1,
                            );
                          return BorderSide(color: Colors.grey);
                        }),
                        elevation:
                            MaterialStateProperty.resolveWith<double>((states) {
                          if (states.contains(MaterialState.pressed))
                            return 0.0;
                          return null;
                        }),
                        overlayColor: MaterialStateProperty.resolveWith(
                          (states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.grey;
                            return null;
                          },
                        ),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.grey[400];
                            return Colors.grey;
                          },
                        ),
                      ),
                      onPressed: AppConstants.logInButtonEnabled == false
                          ? null
                          : () {
                              _signInWithGoogle();
                              AppConstants.guestButtonEnabled = false;
                            },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 13, 0, 13),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image(
                                image: AssetImage("assets/google_logo.png"),
                                height: 25.0),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Sign in with Google',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Login Using ',
                        //style: TextStyle(fontFamily: 'Montserrat'),
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Institute ID.',
                        //style: TextStyle(fontFamily: 'Montserrat'),
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 120.0),
                ],
              ),
        floatingActionButton: Visibility(
          visible: AppConstants.guestButtonEnabled ? true : false,
          child: Container(
            height: kIsWeb ? screensize.width * 0.15 : screensize.width * 0.20,
            width: kIsWeb ? screensize.width * 0.15 : screensize.width * 0.20,
            child: FloatingActionButton.extended(
              onPressed: () async {
                await LoginPage.guestLoginSetup();
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/home', ModalRoute.withName('/root'));
              },
              label: Text(
                'Guest',
                style: TextStyle(
                  fontSize: kIsWeb
                      ? screensize.width * 0.04
                      : screensize.width * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  void _signInWithGoogle() async {
    if (AppConstants.logInButtonEnabled == true) {
      print(
          'appConstants.logInButtonEnabled : ${AppConstants.logInButtonEnabled}');
      AppConstants.logInButtonEnabled = false;

      setState(() {
        this._loading = true;
      });

      final _user = await authentication.signInWithGoogle();

      AppConstants.logInButtonEnabled = true;

      if (_user == null || AppConstants.djangoToken == null) {
        setState(() {
          this._loading = false;
          AppConstants.guestButtonEnabled = true;
        });

        await authentication.signOutGoogle();

        return errorDialog(context);
      } else {
        // logged in successfully :)
        AppConstants.guestButtonEnabled = false;

        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString(
            SharedPreferenceKeys.djangoToken, AppConstants.djangoToken);

        await AppConstants.service
            .getProfile(AppConstants.djangoToken)
            .then((snapshot) {
          AppConstants.currentUser = snapshot.body;
        }).catchError((onError) {
          print('unable to fetch user profile $onError');
        });

        Navigator.of(context)
            .pushNamedAndRemoveUntil('/home', ModalRoute.withName('/root'));
      }
    }

    setState(() {});
  }
}
