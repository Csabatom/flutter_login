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

  @override
  Widget build(BuildContext context) {
    initRelativeScaler(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [globals.mainGradient1, globals.mainGradient2]
            )
          ),
          child: Stack(
            children: <Widget>[
              // Container(
              //   height: height,
              //   width: width,
              //   child: Opacity(
              //     opacity: 0.2,
              //     child: Image.asset("assets/images/Feed/GameBackground.png", fit: BoxFit.cover)
              //   ),
              // ),
              Opacity(
                opacity: 0.6,
                child: Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xffFF0080), Color(0xff00047D)]
                    )
                  ),
                  // child: Opacity(
                  //   opacity: 0.4,
                  //   child: Image.asset("assets/images/Feed/CrownNoShadow.png", fit: BoxFit.fitHeight),
                  // )
                ),
              ),
              SafeArea(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: width,
                        // child: FittedBox(
                        //   fit: BoxFit.fitHeight,
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(100),
                        //     child: Image.asset("assets/images/appIcon.png"),
                        //   )
                        // ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: width,
                                    child: FlatButton(
                                      padding: EdgeInsets.zero,
                                      child: AnimatedContainer(
                                        alignment: Alignment.bottomCenter,
                                        duration: Duration(milliseconds: 1),
                                        height: sy(20),
                                        child: FittedBox(
                                          child: AutoSizeText(
                                            "Login",
                                            style: TextStyle(
                                              fontFamily: "Exo",
                                              fontSize: height,
                                              color: show == "Login" ? Colors.white : Colors.white30,
                                              fontWeight: FontWeight.w700
                                            ),
                                          )
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          show = "Login";
                                        });
                                      },
                                    ),
                                  )
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    width: width,
                                    child: FlatButton(
                                      padding: EdgeInsets.zero,
                                      child: AnimatedContainer(
                                        alignment: Alignment.bottomCenter,
                                        duration: Duration(milliseconds: 1),
                                        margin: EdgeInsets.only(left: sy(10)),
                                        height: sy(20),
                                        child: FittedBox(
                                          child: AutoSizeText(
                                            "Register",
                                            style: TextStyle(
                                              fontFamily: "Exo",
                                              fontSize: height,
                                              color: show == "Register" ? Colors.white : Colors.white30,
                                              fontWeight: FontWeight.w700
                                            ),
                                          )
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          show = "Register";
                                        });
                                      },
                                    ),
                                  )
                                )
                              ],
                            ),
                            Container(
                              height: sy(1),
                              width: width,
                              margin: EdgeInsets.only(left: sy(10), right: sy(10), top: sy(10), bottom: sy(10)),
                              color: Colors.white12
                            )
                          ],
                        )
                      )
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: width,
                        child: Column(
                          children: <Widget>[

                            
                            show == "Register" ? AnimatedContainer(
                              duration: Duration(seconds: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              margin: EdgeInsets.only(left: sy(10), right: sy(10)),
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
                                        hintText: "Username",
                                        hintStyle: TextStyle(
                                          fontFamily: "Exo",
                                          color: Colors.black
                                        )
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ) : Container(),

                            // LOGIN EMAIL
                            AnimatedContainer(
                              duration: Duration(seconds: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              margin: EdgeInsets.only(top: show == "Register" ? sy(5) : 0, bottom: show == "Register" ? 0 : sy(5) , left: sy(10), right: sy(10)),
                              width: width,
                              height: sy(40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(left: sy(10)),
                                    child: LinearGradientMask(
                                      child: Icon(
                                        show == "Register" ? CustomIcons.envelope : CustomIcons.user,
                                        size: sy(14),
                                        color: Colors.white,
                                      ),
                                    )
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: sy(5), right: sy(5)),
                                    constraints: BoxConstraints(minWidth: sy(50), maxWidth: sy(190)),
                                    child: TextFormField(
                                      controller: emailController,
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
                                        hintText: show == "Register" ? "Email" : "Email or Username",
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


                            show == "Register" ? AnimatedContainer(
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
                            ) : Container(),
                            
                            // LOGIN PASSWORD
                            AnimatedContainer(
                              duration: Duration(seconds: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              margin: EdgeInsets.only(left: sy(10), right: sy(10)),
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
                                      controller: passwordController,
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
                                          hintText: show == "Register" ? "Password Again" : "Password",
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


                            AnimatedContainer(
                              duration: Duration(seconds: 2),
                              child: CupertinoButton(
                                padding: EdgeInsets.zero,
                                child: Container(
                                  margin: EdgeInsets.only(top: show == "Register" ? sy(10) :  sy(10), left: sy(10), right: sy(10)),
                                  padding: EdgeInsets.all(15),
                                  height: sy(40),
                                  width: width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [globals.navigationGradient1, globals.navigationGradient2]
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
                                  if(show == "Login") {
                                    var url = 'http://192.168.0.3:8080/login';
                                    var response = await http.post(url, body: {'usernameEmail': emailController.text, 'password': passwordController.text});
                                    // print('Response status: ${response.statusCode}');
                                    print('Response body: ${response.body}');
                                    response.body.contains("error") ? print("Sikertelen") : print("Sikeres");
                                  } else {
                                    // REGISTER
                                  }
                                },
                              )
                            )
                          ],
                        ),
                      )
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: width,
                        padding: EdgeInsets.all(75),
                        child: CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              show == "Register" ? "Read Terms of Service" : "Forgot Password",
                              style: TextStyle(
                                fontFamily: "Exo",
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: sy(12)
                              ),
                            ),
                          ),
                          onPressed: () {
                            showDialog<bool>(
                              barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return Theme(
                                  data: ThemeData.dark(),
                                  child: CupertinoAlertDialog(
                                    title: Text(
                                      show == "Register" ? "Terms of Service" : "Forgot password",
                                      style: TextStyle(
                                        fontFamily: "Exo",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white
                                      ),
                                    ),
                                  actions: <Widget>[
                                    CupertinoDialogAction(
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(
                                          color: Colors.red
                                        )
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      }
                                    ),
                                  ],
                                  content: Card(
                                    color: Colors.transparent,
                                    elevation: 0.0,
                                    child: show == "Register" ? Container(
                                      width: width,
                                      height: sy(150),
                                      child: ListView(
                                        children: <Widget>[
                                          Text(
                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              fontFamily: "Exo",
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white
                                            ),
                                          )
                                        ],
                                      ),
                                    ) : Column(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(top: sy(10), bottom: sy(5)),
                                          padding: EdgeInsets.only(left: sy(5), right: sy(5)),
                                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black),
                                          child: TextFormField(
                                            textInputAction: TextInputAction.go,
                                            cursorColor: Colors.black,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Exo"
                                            ),
                                            decoration: new InputDecoration(
                                                border: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                disabledBorder: InputBorder.none,
                                                hintText: "Email",
                                                hintStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Exo"
                                                ),
                                              ),
                                          ),
                                        ),
                                        CupertinoButton(
                                          padding: EdgeInsets.zero,
                                          onPressed: () {},
                                          child: Container(
                                              height: sy(30),
                                              width: width,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  gradient: LinearGradient(
                                                    begin: Alignment.bottomLeft,
                                                    end: Alignment.topRight,
                                                    colors: [globals.navigationGradient1, globals.navigationGradient2],
                                                  )),
                                              child: Center(
                                                child: AutoSizeText(
                                                  "Send Email",
                                                  style: TextStyle(
                                                    fontFamily: "Exo",
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white),
                                                ),
                                              )))
                                      ],
                                    ),
                                  )
                                ));
                              }
                            );
                          },
                        )
                      )
                    )
                  ],
                ),
              )
            ],
          )
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