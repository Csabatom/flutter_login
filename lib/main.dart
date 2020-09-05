import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/custom_icons_icons.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:login/Widgets/globalVariables.dart' as globals;
import 'package:http/http.dart' as http;

void main() async {
  runApp(MaterialApp(home: LogReg()));
}

class LogReg extends StatefulWidget {
  LogReg({Key key}) : super(key: key);

  @override
  _LogRegState createState() => _LogRegState();
}

class _LogRegState extends State<LogReg> with RelativeScale {
  String show = "Login";
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  Color buttonColor1 = globals.navigationGradient1;
  Color buttonColor2 = globals.navigationGradient2;

  @override
  Widget build(BuildContext context) {
    initRelativeScaler(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xff202020),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.help_outline),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: "Bejelentkezés"),
              Tab(text: "Regisztráció"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      // BEJELENTKEZÉS-FORM
                      child: Column(
                        children: [
                          // BEJELENTKEZÉS-NÉV
                          AnimatedContainer(
                            duration: Duration(seconds: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(top: sy(5), bottom: sy(5), left: sy(10), right: sy(10)),
                            width: width,
                            height: sy(40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: sy(10)),
                                  child: LinearGradientMask(
                                    child: Icon(
                                      CustomIcons.user,
                                      size: sy(14),
                                      color: Colors.white,
                                    ),
                                  )
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: sy(5), right: sy(5)),
                                  constraints: BoxConstraints(minWidth: sy(50), maxWidth: sy(190)),
                                  child: TextFormField(
                                    textInputAction: TextInputAction.go,
                                    cursorColor: Colors.black,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Exo"
                                    ),
                                    decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: "Username or Email",
                                      hintStyle: TextStyle(
                                        fontFamily: "Exo",
                                        color: Colors.black
                                      )
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                          // BEJELENTKEZÉS-JELSZÓ
                          AnimatedContainer(
                            duration: Duration(seconds: 2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(top: sy(5), bottom: sy(5), left: sy(10), right: sy(10)),
                            width: width,
                            height: sy(40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: sy(10)),
                                  child: LinearGradientMask(
                                    child: Icon(
                                      CustomIcons.key,
                                      size: sy(14),
                                      color: Colors.white,
                                    ),
                                  )
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: sy(5), right: sy(5)),
                                  constraints: BoxConstraints(minWidth: sy(50), maxWidth: sy(190)),
                                  child: TextFormField(
                                    textInputAction: TextInputAction.go,
                                    cursorColor: Colors.black,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Exo"
                                    ),
                                    obscureText: true,
                                    decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                        fontFamily: "Exo",
                                        color: Colors.black
                                      )
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                          Spacer(), // FIGYELMEN KÍVŰL HAGYNI

                          // BEJELENTKEZÉS-GOMB
                          IgnorePointer(
                            ignoring: buttonColor1 == Color(0xff202020) ? true : false,
                            child: CupertinoButton(
                              padding: EdgeInsets.zero,
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                margin: EdgeInsets.only(top: show == "Register" ? sy(10) :  sy(10), left: sy(10), right: sy(10)),
                                padding: EdgeInsets.all(15),
                                height: sy(40),
                                width: width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [buttonColor1, buttonColor2]
                                  )
                                ),
                                child: FittedBox(
                                  fit: BoxFit.fitHeight,
                                  child: Text(
                                    show == "Register" ? "Register" : "Login",
                                    style: TextStyle(
                                      fontFamily: "Exo",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: height
                                    ),
                                  ),
                                )
                              ),
                              onPressed: () async {
                                buttonColor1 = Color(0xff202020);
                                buttonColor2 = Color(0xff202020);
                                var url = 'http://192.168.0.3:8080/login';
                                var response = await http.post(url, body: {'usernameEmail': emailController.text, 'password': passwordController.text});
                                // print('Response status: ${response.statusCode}');
                                print('Response body: ${response.body}');
                                response.body.contains("error") ? print("Sikertelen") : print("Sikeres");
                                if(response.body.contains("error")) {
                                  // BEJELENTKEZÉS-SIKERTELEN
                                  await Future.delayed(Duration(seconds: 1));
                                  buttonColor1 = globals.navigationGradient1;
                                  buttonColor2 = globals.navigationGradient2;
                                  debugPrint("SIKERTELEN BEJELENTKEZÉS");
                                } else {
                                  // BEJELENTKEZÉS-SIKERES
                                  await Future.delayed(Duration(seconds: 1));
                                  buttonColor1 = globals.navigationGradient1;
                                  buttonColor2 = globals.navigationGradient2;
                                  debugPrint("SIKERES BEJELENTKEZÉS");
                                }
                              },
                            )
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                ],
              )
            ),
            Container(
              
            )
          ],
        ),
        drawer: Container(
          color: Colors.black,
          margin: EdgeInsets.only(right: sy(50)),
        ),
      ),
    );
  }
}

class LinearGradientMask extends StatelessWidget {
  LinearGradientMask({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [globals.navigationGradient1, globals.navigationGradient2],
        tileMode: TileMode.mirror,
      ).createShader(bounds),
      child: child,
    );
  }
}