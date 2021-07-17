import 'package:flutter/material.dart';
import 'package:foodmonkey/helpers/TrianglePainter.dart';
import 'package:foodmonkey/utils/Constants.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var msize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: Text("Login")),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              CustomPaint(painter: TrianglePainter(msize: msize)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Center(child: Image.asset("assets/images/fm.png")),
                    SizedBox(height: 20),
                    Text("Login", style: Constants.getTitleTextStyle(45)),
                    SizedBox(height: 50),
                    Form(
                        child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Phone",
                            labelStyle: TextStyle(
                                color: Constants.normal, fontSize: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Constants.normal)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Constants.normal)),
                          ),
                        ),
                        SizedBox(height: 30),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "password",
                            labelStyle: TextStyle(
                                color: Constants.normal, fontSize: 20),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Constants.normal)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Constants.normal)),
                          ),
                        )
                      ],
                    )),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("Not a member yet!\n Please register here!"),
                            SizedBox(height: 5),
                            Container(
                              width: 50,
                              height: 5,
                              decoration:
                                  BoxDecoration(color: Constants.accent),
                            )
                          ],
                        ),
                        FlatButton(
                            onPressed: () {},
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            color: Constants.accent,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Row(
                              children: [
                                Icon(Icons.lock, color: Constants.primary),
                                SizedBox(width: 5),
                                Text("Login",
                                    style: TextStyle(
                                        color: Constants.primary,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
