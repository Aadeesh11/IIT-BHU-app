import 'package:flutter/material.dart';
import 'package:iit_app/data/internet_connection_interceptor.dart';
import 'package:iit_app/external_libraries/spin_kit.dart';
import 'package:iit_app/model/appConstants.dart';
import 'package:iit_app/model/built_post.dart';
import 'package:iit_app/model/colorConstants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget _getButton({
  Color borderColor,
  Color bgColor,
  Color textColor,
  double fontsize,
  String text,
}) {
  return Container(
    alignment: Alignment.center,
    width: 120,
    height: 40,
    padding: EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      border: Border.all(color: borderColor),
      borderRadius: BorderRadius.circular(100),
      color: bgColor,
    ),
    child: Text(
      text,
      style: TextStyle(
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.bold,
        fontSize: fontsize,
        color: textColor,
      ),
    ),
  );
}

class LostAndFoundPage extends StatefulWidget {
  const LostAndFoundPage({Key key}) : super(key: key);

  @override
  _LostAndFoundPageState createState() => _LostAndFoundPageState();
}

class _LostAndFoundPageState extends State<LostAndFoundPage> {
  BuiltProfilePost profileDetails;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameTEC = TextEditingController();
  final TextEditingController _descItem = TextEditingController();
  final TextEditingController _gDriveLink = TextEditingController();
  SharedPreferences prefs;

  _retrieveValues() async {
    prefs = await SharedPreferences.getInstance();
    setState(
      () {
        // _nameTEC.text = prefs.getString('lfname') ?? "";
        _descItem.text = prefs.getString('lfdescription') ?? "";
        _gDriveLink.text = prefs.getString('lfdrive') ?? "";
        // _branchName = prefs.getString('lfbranch');
        // _year = prefs.getString('lfyear');
        _lfType = prefs.getString('lftype');
      },
    );
  }

  _clearPreferences() async {
    // prefs.setString('lfname', "");
    prefs.setString('lfdescription', "");
    prefs.setString('lfdrive', "");
    // prefs.setString('lfyear', null);
    // prefs.setString('lfbranch', null);
    prefs.setString('lftype', null);
  }

  String _branchName;
  String _year;
  String _lfType;

  _resetValues({bool refresh = false}) async {
    setState(() {
      // _nameTEC.text = "";
      _descItem.text = "";
      _gDriveLink.text = "";
      // _branchName = null;
      // _year = null;
      _lfType = null;
      _clearPreferences();
    });
    if (refresh) _onRefresh();
  }

  Future<void> _onRefresh() async {
    // final _response =
    //     await AppConstants.service.getGrievanceCount(AppConstants.djangoToken);
    // setState(() {
    //   _pending = _response.body.pending;
    //   _registered = _response.body.registered;
    //   _closed = _response.body.closed;
    // });
  }

  void _showDialog({
    String name,
    String branch,
    String year,
    String lfType,
    String iDesc,
    String gDriveLink,
  }) async {
    bool submitted = await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => Dialog(
        child: DialogueContent(
          name: name,
          branch: branch,
          year: year,
          iDesc: iDesc,
          lfType: lfType,
          gDriveLink: gDriveLink,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
    if (submitted != null && submitted == true) {
      //increase counters.
      // _clearPreferences();
      _resetValues(refresh: true);
      print('asdasd');
    }
  }

  DropdownMenuItem<String> _getDropDownItem(String title, String value) {
    return DropdownMenuItem<String>(
      child: Text(title),
      value: value,
    );
  }

  Future fetchProfileDetails() async {
    await AppConstants.service
        .getProfile(AppConstants.djangoToken)
        .then((value) {
      profileDetails = value.body;
      setState(() {});
    }).catchError((onError) {
      if (onError is InternetConnectionException) {
        AppConstants.internetErrorFlushBar.showFlushbar(context);
        return;
      }
      print("Error in fetching profile: ${onError.toString()}");
    });
  }

  InputDecoration _getInputDecorationFor(String labelText,
      {FloatingLabelBehavior floatingLabelBehaviour =
          FloatingLabelBehavior.never,
      bool isRequired = true}) {
    return InputDecoration(
      counterText: '',
      labelStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: ColorConstants.grievanceLabelText,
      ),
      filled: true,
      contentPadding: EdgeInsets.only(left: 15, right: 10),
      fillColor: Colors.white,
      label: Text.rich(
        TextSpan(
          children: <InlineSpan>[
            WidgetSpan(
              child: Text(
                labelText,
              ),
            ),
            if (isRequired)
              WidgetSpan(
                alignment: PlaceholderAlignment.top,
                child: Text(
                  ' *',
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
              ),
          ],
        ),
      ),
      //labelText: labelText,
      floatingLabelBehavior: floatingLabelBehaviour,
      floatingLabelStyle: TextStyle(fontSize: 20, color: Colors.black),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 0.5, color: Colors.blue),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 0.5, color: Colors.blue),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(width: 0.5, color: Colors.blue),
      ),
    );
  }

  String NameofBranch() {
    String bname = profileDetails.department;
    int x = bname.indexOf('Engineering');
    // var x = bname.split('Engineering');
    // _branchName = x[0];
    _branchName = bname.substring(0, x - 1);
    print(_branchName);
    _branchName.trim();
    return _branchName;
  }

  String wYear() {
    String x = profileDetails.year_of_joining;
    int y = int.parse(x);
    int val = DateTime.now().year - y;
    if (DateTime.now().month >= 7) val++;
    if (val == 1)
      _year = val.toString() + 'st';
    else if (val == 2)
      _year = val.toString() + 'nd';
    else if (val == 3)
      _year = val.toString() + 'rd';
    else
      _year = val.toString() + 'th';

    print(_year);
    _year.trim();
    return _year;
  }

  @override
  void initState() {
    fetchProfileDetails();
    super.initState();
    _retrieveValues();
    //fetching pending, closed , registered.
  }

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
            'Lost And Found',
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
                // Positioned(
                //   right: 9,
                //   top: 7,
                //   child: CircleAvatar(
                //     backgroundColor: Colors.green,
                //     maxRadius: 6,
                //     minRadius: 6,
                //   ),
                // ),
              ],
            ),
          ],
        ),
        body: (profileDetails == null)
            ? Container(
                height: MediaQuery.of(context).size.height / 4,
                child: Center(
                  child: LoadingCircle,
                ),
              )
            : ListView(children: [
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0, bottom: 20),
                      child: SizedBox(
                        child: Center(
                          child: Text(
                            'Lost And Found Form',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.grievanceBtn,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 45,
                      decoration: BoxDecoration(
                        color: ColorConstants.grievanceBack,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Center(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                child: TextFormField(
                                  style: TextStyle(
                                      color: ColorConstants.grievanceBtn,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  initialValue: profileDetails.name,
                                  readOnly: true,
                                  decoration: _getInputDecorationFor('Name',
                                      floatingLabelBehaviour:
                                          FloatingLabelBehavior.auto),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Container(
                                      height: 50,
                                      child: TextFormField(
                                        style: TextStyle(
                                            color: ColorConstants.grievanceBtn,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                        readOnly: true,
                                        decoration: _getInputDecorationFor(
                                            'Branch',
                                            floatingLabelBehaviour:
                                                FloatingLabelBehavior.auto),
                                        initialValue: NameofBranch(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      height: 50,
                                      child: TextFormField(
                                        style: TextStyle(
                                            color: ColorConstants.grievanceBtn,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                        readOnly: true,
                                        decoration: _getInputDecorationFor(
                                            'Year',
                                            floatingLabelBehaviour:
                                                FloatingLabelBehavior.auto),
                                        initialValue: wYear(),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                child: DropdownButtonFormField<String>(
                                  style: TextStyle(
                                      color: ColorConstants.grievanceBtn,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                  decoration:
                                      _getInputDecorationFor('Lost OR Found'),
                                  value: _lfType,
                                  isExpanded: true,
                                  validator: (value) {
                                    if (value == null) {
                                      return 'Please choose a value';
                                    }
                                    return null;
                                  },
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: ColorConstants.grievanceBack,
                                    size: 30,
                                  ),
                                  onChanged: (nv) {
                                    setState(() {
                                      _lfType = nv;
                                    });

                                    prefs.setString('lftype', _lfType);
                                  },
                                  items: <String>[
                                    'Lost',
                                    'Found',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return _getDropDownItem(value, value);
                                  }).toList(),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 100,
                                child: TextFormField(
                                  maxLength: 4000,
                                  textAlignVertical: TextAlignVertical(y: -0.5),
                                  expands: true,
                                  maxLines: null,
                                  controller: _descItem,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  decoration: _getInputDecorationFor(
                                      'Describe The Lost/Found Item',
                                      floatingLabelBehaviour:
                                          FloatingLabelBehavior.auto),
                                  onChanged: (value) {
                                    if (value.trim().isNotEmpty)
                                      prefs.setString('lfdescription', value);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 50,
                                child: TextFormField(
                                  controller: _gDriveLink,
                                  decoration: _getInputDecorationFor(
                                    'Drive Link(Optional)',
                                    floatingLabelBehaviour:
                                        FloatingLabelBehavior.auto,
                                    isRequired: false,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty)
                                      return null;
                                    if (value.isNotEmpty) {
                                      if (value.startsWith(
                                              'https://drive.google.com') ||
                                          value
                                              .startsWith('drive.google.com')) {
                                        return null;
                                      } else
                                        return 'Enter a valid drive link';
                                    }
                                    return null;
                                  },
                                  onChanged: (value) {
                                    if (value.trim().isNotEmpty)
                                      prefs.setString('lfdrive', value);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    splashColor: ColorConstants.grievanceBtn,
                                    radius: 20,
                                    onTap: () {
                                      _resetValues(refresh: false);
                                    },
                                    child: _getButton(
                                      bgColor: Colors.white,
                                      borderColor: ColorConstants.grievanceBtn,
                                      fontsize: 20,
                                      text: 'Clear',
                                      textColor: ColorConstants.grievanceBtn,
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: ColorConstants.grievanceBtn,
                                    radius: 20,
                                    onTap: () {
                                      if (_formKey.currentState.validate()) {
                                        //VALIDATE VALUES FIRRST and show snackbar if wrong values.
                                        _showDialog(
                                          name: profileDetails.name,
                                          branch: _branchName,
                                          lfType: _lfType,
                                          year: _year,
                                          iDesc: _descItem.text,
                                          gDriveLink: _gDriveLink.text,
                                        );
                                      }
                                    },
                                    child: _getButton(
                                      bgColor: ColorConstants.grievanceBtn,
                                      borderColor: ColorConstants.grievanceBtn,
                                      fontsize: 20,
                                      text: 'Submit',
                                      textColor: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ]),
      ),
    );
  }
}

class DialogueContent extends StatefulWidget {
  const DialogueContent(
      {Key key,
      this.branch,
      this.gDriveLink,
      this.lfType,
      this.iDesc,
      this.name,
      this.year})
      : super(key: key);
  final String name;
  final String branch;
  final String year;
  final String lfType;
  final String iDesc;
  final String gDriveLink;

  @override
  _DialogueContentState createState() => _DialogueContentState();
}

class _DialogueContentState extends State<DialogueContent> {
  bool _confirmSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      // height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: _confirmSelected
          ? FutureBuilder(
              future: AppConstants.service.createLostAndFound(
                AppConstants.djangoToken,
                LostAndFoundPost(
                  (b) => b
                    ..branch = widget.branch
                    ..name = widget.name
                    ..year = widget.year
                    ..description = widget.iDesc
                    ..course = 'B.Tech'
                    ..drive_link = widget.gDriveLink
                    ..type_of_lost_and_found = widget.lfType,
                ),
              ),
              builder: (ctx, result) {
                if (result.connectionState == ConnectionState.waiting) {
                  return SizedBox(
                    height: 100,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                if (result.hasData) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 50,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        //width: 190,
                        child: Center(
                          child: Text(
                            'Your query\n has been\n successfully\n submitted',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.bold,
                                color: ColorConstants.grievanceBtn,
                                fontSize: 25),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                } else
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.clear,
                        color: Colors.red,
                        size: 50,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        //width: 190,
                        child: Center(
                          child: Text(
                            'Oops!\nSomething went\nwrong',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.grievanceBtn,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  );
              },
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  //width: 190,
                  child: Center(
                    child: Text(
                      'Are you sure, you want to submit\n your query ?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.grievanceBtn,
                          fontSize: 25),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      splashColor: ColorConstants.grievanceBtn,
                      radius: 20,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: _getButton(
                        bgColor: Colors.white,
                        borderColor: ColorConstants.grievanceBtn,
                        fontsize: 20,
                        text: 'Back',
                        textColor: ColorConstants.grievanceBtn,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      splashColor: ColorConstants.grievanceBtn,
                      radius: 20,
                      onTap: () {
                        //api call then display msg accordinly.
                        setState(() {
                          _confirmSelected = true;
                        });
                        Future.delayed(Duration(seconds: 3),
                            () => Navigator.of(context).pop(true));
                      },
                      child: _getButton(
                        bgColor: ColorConstants.grievanceBtn,
                        borderColor: ColorConstants.grievanceBtn,
                        fontsize: 20,
                        text: 'Confirm',
                        textColor: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
    );
  }
}
