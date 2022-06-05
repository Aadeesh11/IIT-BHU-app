import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iit_app/data/internet_connection_interceptor.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:iit_app/model/appConstants.dart';
import 'package:iit_app/model/deprecatedWidgetsStyle.dart';
import 'package:iit_app/screens/newScreens/build_search_results.dart';
import 'package:iit_app/screens/newScreens/newHomeScreen.dart';
import 'package:iit_app/screens/newScreens/new_home_FAB.dart';
import 'package:iit_app/screens/newScreens/new_home_app_bar.dart';
import 'package:iit_app/screens/newScreens/searchBar.dart';
import 'package:iit_app/ui/drawer.dart';

class NewHomePage extends StatefulWidget {
  @override
  _NewHomePageState createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage>
    with SingleTickerProviderStateMixin {
  NewSearchBarWidget searchBarWidget;
  ValueNotifier<bool> searchListener;

  FocusNode searchFocusNode;

  final GlobalKey<FabCircularMenuState> fabKey =
      GlobalKey<FabCircularMenuState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future workshopFuture;
  Future noticeFuture = AppConstants.getAllNoticesFromDatabase();

  @override
  void initState() {
    _fetchWorkshopsAndCouncilAndEntityButtons(false);
    searchListener = ValueNotifier(false);
    searchBarWidget = NewSearchBarWidget(searchListener);
    searchFocusNode = FocusNode();
    super.initState();
  }

  _fetchWorkshopsAndCouncilAndEntityButtons(bool refreshed) async {
    try {
      if (refreshed != true) {
        await AppConstants.populateWorkshopsAndCouncilAndEntityButtons();
        setState(() {
          AppConstants.firstTimeFetching = false;
        });
      }
      await AppConstants.updateAndPopulateWorkshops();
      setState(() {});
      await AppConstants.updateAndPopulateAllEntities();
      await AppConstants.writeCouncilAndEntityLogoIntoDisk();
      setState(() {});
      await AppConstants.updateAndPopulateNotices();
      setState(() {});
    } on InternetConnectionException catch (_) {
      AppConstants.internetErrorFlushBar.showFlushbar(context);
      return;
    } catch (err) {
      print(err);
    }
  }

  Future<bool> _onPopHome() async {
    if (fabKey.currentState.isOpen) {
      fabKey.currentState.close();
      return false;
    }
    if (_scaffoldKey.currentState.isDrawerOpen) {
      Navigator.of(context).pop();
      return false;
    }
    // if on home screen but searchController is onFocus
    if (!searchBarWidget.isSearching.value && searchFocusNode.hasFocus) {
      searchFocusNode.unfocus();
      return false;
    }
    // to retrun on home route on popping from search result screen
    if (searchBarWidget.isSearching.value) {
      Navigator.pop(context);
      Navigator.pushNamed(context, '/home');
      return false;
    }
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        title: Text('Do you really want to exit?'),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: flatButtonStyle,
                child: Text(
                  'No!',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Color(0xFF176ede),
                    letterSpacing: .2,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
              TextButton(
                style: flatButtonStyle,
                child: Text(
                  'Yes',
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Color(0xFF176ede),
                    letterSpacing: .2,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () =>
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onPopHome,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xFFffffff),
        drawer: SideBar(context: context),
        floatingActionButton: newHomeFAB(context, fabKey: fabKey),
        appBar: newHomeAppBar(context, searchBarWidget, searchFocusNode),
        body: GestureDetector(
          onTap: () {
            if (fabKey.currentState.isOpen) {
              fabKey.currentState.close();
            }
            if (searchFocusNode.hasFocus) {
              searchFocusNode.unfocus();
            }
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(12, 10, 12, 0),
            // decoration: BoxDecoration(
            //     color: ColorConstants.workshopContainerBackground,
            //     borderRadius: BorderRadius.only(
            //         topLeft: const Radius.circular(40.0),
            //         topRight: const Radius.circular(40.0))),
            child: ValueListenableBuilder<bool>(
              valueListenable: searchListener,
              builder: (context, isSearching, child) {
                if (isSearching) {
                  workshopFuture = AppConstants.service
                      .searchWorkshop(searchBarWidget.searchPost);
                  return buildResultsFromSearch(context,
                      searchPost: searchBarWidget.searchPost,
                      searchval: searchBarWidget.searchController.text,
                      workshopFuture: workshopFuture,
                      noticeFuture: noticeFuture);
                } else
                  return NewHomeScreen(
                    context: context,
                    reload: _fetchWorkshopsAndCouncilAndEntityButtons,
                  );
              },
            ),
          ),
        ),
      ),
    );
  }
}
