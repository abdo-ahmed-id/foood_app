import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/routes.dart';
import 'package:foood_app/helpers/widget.dart';
import 'package:foood_app/services/auth.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  GlobalKey<ScaffoldState> loginKey = GlobalKey<ScaffoldState>();

  String _email;

  String _password;

  final _auth = Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: loginKey,
      body: Form(
        key: globalKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                'تسجيل الدخول',
                style: GoogleFonts.cairo(
                    color: AppTheme.fontColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(
                    hint: 'اسم المستخدم او البريد الالكتروني',
                    icon: Icon(Icons.perm_identity),
                    onChange: (value) {
                      _email = value;
                    },
                  )),
              SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(
                    hint: 'كلمة المرور',
                    icon: Icon(Icons.lock),
                    onChange: (value) {
                      _password = value;
                    },
                  )),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                child: Text(
                  'تسجيل الدخول',
                  style: GoogleFonts.cairo(
                    color: Colors.white,
                  ),
                ),
                color: AppTheme.primaryColor,
                onPressed: () async {
                  try {
                    if (globalKey.currentState.validate()) {
                      print(_email);
                      print(_password);
                      User user = await _auth.signIn(_email, _password);
                      if (user != null) {
                        Modular.to.pushReplacementNamed(Routes.homePage);
                      } else {}
                    }
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'user-not-found') {
                      loginKey.currentState.showSnackBar(SnackBar(
                        content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              child: Text(
                                'SignUp',
                                style: GoogleFonts.cairo(
                                    color: AppTheme.primaryColor),
                              ),
                              onTap: () {
                                Modular.to.pushNamed(Routes.signUpPage);
                              },
                            ),
                            Text('No user found for that email.'),
                          ],
                        ),
                      ));
                    } else if (e.code == 'wrong-password') {
                      loginKey.currentState.showSnackBar(SnackBar(
                        content: Text('Wrong password provided for that user.'),
                      ));
                    }
                  } catch (e) {
                    loginKey.currentState.showSnackBar(SnackBar(
                      content: Text(e),
                    ));
                  }
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 2,
                ),
              ),
              Center(
                child: Text(
                  'او',
                  style: GoogleFonts.cairo(fontSize: 15),
                ),
              ),
              RaisedButton(
                child: Text(
                  'انشاء حساب',
                  style: GoogleFonts.cairo(
                    color: Colors.white,
                  ),
                ),
                color: AppTheme.primaryColor,
                onPressed: () {
                  Modular.to.pushReplacementNamed(Routes.signUpPage);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                      text: 'جوجل',
                      onClick: () async {
                        await _auth.signInWithGoogle();
                        Modular.to.pushReplacementNamed(Routes.homePage);
                      }),
                  MyButton(
                    text: 'فيسبوك',
                    onClick: () async {
                      await _auth.signInWithFaceBook();
                      Modular.to.pushReplacementNamed(Routes.homePage);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
