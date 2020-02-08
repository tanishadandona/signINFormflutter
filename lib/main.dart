import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Myapp1();
  }
}

class Myapp1 extends State<MyApp> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool autoValidate = false;

  String name;
  String email;
  String mobile;

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.white),
        home: Container(
          decoration: (BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/tani.jpg"), fit: BoxFit.fill),
          )

              //Rest of the widgets go here..
              ),
          child: Scaffold(
              appBar: AppBar(
                title: Text(
                  '<',
                  style: TextStyle(color: Colors.amber),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                  child: Container(
                      padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Sign Up',
                              //:TextDirection.,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 30.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                  // fontFamily: 'Schyler'pp---+++
                                  ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                             // padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                              width: double.infinity,
                              height: 50,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 2),

                                      width: 40,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                            color: Colors.amber,
                                          )),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                            ),
                                          ),
                                          hintText: 'Mr.',
                                          labelText: 'Title',
                                          labelStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      )),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(6, 0, 0, 0)),
                                  Container(
                                    height: double.infinity,
                                    width: 100,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                          color: Colors.amber,
                                        )),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        hintText: 'First name',
                                        hintStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(9, 0, 0, 0)),
                                  Container(
                                    height: double.infinity,
                                    width: 180,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                          color: Colors.amber,
                                        )),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        hintText: 'Last name',
                                        hintStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            TextFormField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'Email ID',
                                  hintStyle: TextStyle(color: Colors.white)),
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (String val) {
                                email = val;
                              },
                            ),
                            TextFormField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.white)),
                              obscureText: true,
                            ),
                            TextFormField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'Date Of Birth',
                                  hintStyle: TextStyle(color: Colors.white)),
                            ),
                            TextFormField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'Country',
                                  hintStyle: TextStyle(color: Colors.white)),
                            ),
                            TextFormField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  hintText: 'Phone number',
                                  //hintText: 'KW +965',
                                  hintStyle: TextStyle(color: Colors.white)),
                            ),
                            Container(
                             // margin: EdgeInsets.fromLTRB(18, op, right, bottom),
                              height: 50,
                              child: Row(
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.fromLTRB(50, 0, 0, 0)),
                                  Text('Already a member?',style: TextStyle(color: Colors.white,fontSize: 15),



                                  ),
                                  Text(' Sign in',
                                    style: TextStyle(
                                      color: Colors.amber,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),




                                ],
                              ),
                            ),
                            Container(color: Colors.amber,
                                margin: EdgeInsets.only(top: 25),
                                width: 450,
                                height: 40,
                                child: RaisedButton(onPressed: null,

                                    child: Text(
                                      "Sign in",

                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,


                                      ),

                                    )
                                )
                            )


                          ],

                        ),
                      )))),
        ));
  }
}
