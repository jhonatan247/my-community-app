import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_community/screens/SignUpPage.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-pahe';
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _currentEmail = TextEditingController();
  final _currentPassword = TextEditingController();
  bool _isChecked = false;

  void onChanged(bool value){
    setState(() {
      _isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context){
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.blue, //or set color with: Color(0xFF0000FF)
      )
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.blue)
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 80.0
                  ),
                  child: Text(
                    "Login Now",
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        top: 30.0
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()
                            )
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Text(
                          "Google",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0,
                        right: 20.0,
                        top: 30.0
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()
                            )
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Text(
                          "Facebook",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 15.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom:18.0),
                  child: Text(
                    "or login with email",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 0.0
              ),
              child: TextFormField(
                controller: _currentEmail,
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                  hintText: 'Email',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
              ),
            ), //emailField

            SizedBox(
              height: 15.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 0.0,
              ),
              child: TextFormField(
                controller: _currentPassword,
                autofocus: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
              ),
            ), //passwordField

            SizedBox(
              height: 20.0,
            ),

            Stack(
              children: <Widget>[
                Container(
                  child: Checkbox(
                    value: _isChecked,
                    onChanged: (bool value){onChanged(value);},
                  ), ////radioButton
                ),

                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top:15.0,
                        left: 50
                    ),
                    child: Text(
                      "Remember me",
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(top:15.0, right: 20),
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginPage()
                        ),
                      );
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                ), //forgotPassword
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 30.0
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage()
                          )
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),//Login Button

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom:18.0),
                    child: Text(
                      "Don't have an account?  ",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage()
                          ),
                        );
                      },
                      child : Padding(
                        padding: const EdgeInsets.only(bottom:18.0),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.blue[600],
                            fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ) //Sign Up Hyperlink
          ],
        ),
      ),
    );
  }
}