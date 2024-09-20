import 'dart:async';
import 'package:flutter/material.dart';
import 'package:src/blocs/auth/auth.bloc.dart';
import 'package:src/shared/custom_style.dart';
import 'package:src/shared/custom_components.dart';
import 'dart:html';
import 'dart:ui' as ui;

class Loom extends StatefulWidget {
  static const routeName = '/loomrecord';
  @override
  LoomState createState() => LoomState();
}

class LoomState extends State<Loom> {
  bool spinnerVisible = false;
  bool messageVisible = false;
  bool isAdmin = false;
  String messageTxt = "";
  String messageType = "";
  String _url;

  void main() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        'hello-world-html',
        (int viewId) => IFrameElement()
          ..width = '640'
          ..height = '600'
          ..src = _url
          ..style.border = 'none');

    // runApp(Directionality(
    //   textDirection: TextDirection.ltr,
    //   child: SizedBox(
    //     width: 640,
    //     height: 360,
    //     child: HtmlElementView(viewType: 'hello-world-html'),
    //   ),
    // ));
  }

  @override
  void initState() {
    AuthBloc authBloc = AuthBloc();
    // this is accessing Angular app at localhost:4200
    _url = "http://localhost:4200/record/" + authBloc.getUID();
    getData(authBloc);
    main();
    super.initState();
  }

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }

  toggleSpinner() {
    setState(() => spinnerVisible = !spinnerVisible);
  }

  showMessage(bool msgVisible, msgType, message) {
    messageVisible = msgVisible;
    setState(() {
      messageType = msgType == "error"
          ? cMessageType.error.toString()
          : cMessageType.success.toString();
      messageTxt = message;
    });
  }

  getData(AuthBloc authBloc) async {
    // toggleSpinner();
    // messageVisible = true;
    // if (authBloc.isSignedIn()) {
    //   if (authBloc.isSignedIn()) {
    //     await authBloc
    //         .getUserData("appointments")
    //         .then((res) => setState(() =>
    //             updateFormData(AppointmentDataModel.fromJson(res.data()))))
    //         .catchError((error) => showMessage(
    //             true, "error", "User information is not available."));
    //   }
    // } else {
    //   showMessage(true, "error", "An un-known error has occured.");
    // }
    // toggleSpinner();
  }

  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = AuthBloc();
    return new Scaffold(
      appBar: AppBar(title: const Text("Video Message")),
      drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: isAdmin
              // ? adminNav(context, authBloc)
              ? CustomAdminDrawer()
              : CustomGuestDrawer()),
      body: Center(
        child: Material(
          child: Container(
              width: 600,
              height: 700,
              margin: EdgeInsets.all(20.0),
              child: authBloc.isSignedIn()
                  ? settings(authBloc)
                  : loginPage(authBloc)),
        ),
      ),
    );
  }
  // Widget build(BuildContext context) {
  //   AuthBloc authBloc = AuthBloc();
  //   return Material(
  //       child: Container(
  //           margin: EdgeInsets.all(20.0),
  //           child: authBloc.isSignedIn()
  //               ? settings(authBloc)
  //               : loginPage(authBloc)));
  // }

  Widget loginPage(AuthBloc authBloc) {
    return Column(
      children: [
        SizedBox(width: 10, height: 50),
        ElevatedButton(
          child: Text('Click here to go to Login page'),
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              '/login',
            );
          },
        )
      ],
    );
  }

  Widget settings(AuthBloc authBloc) {
    return ListView(
      children: [
        Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 25.0),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.movie, color: Colors.pink),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        '/aboutus',
                      );
                    },
                  ),
                  Text("Record Video Message", style: cHeaderDarkText),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    width: 600,
                    height: 700,
                    child: HtmlElementView(viewType: 'hello-world-html'),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Widget signinSubmitBtn(context, authBloc) {
  //   return ElevatedButton(
  //     child: Text('Save'),
  //     onPressed: _btnEnabled == true ? () => setData(authBloc) : null,
  //   );
  // }
}
