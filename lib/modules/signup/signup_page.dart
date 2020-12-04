import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/routes.dart';
import 'package:foood_app/helpers/widget.dart';
import 'package:foood_app/services/auth.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final myKey = GlobalKey<ScaffoldState>();
  String _email;
  String _password;
  final _auth = Auth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: myKey,
      body: Form(
        key: _globalKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                'اشاء حساب',
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
                    icon: Icon(Icons.lock_outline),
                    onChange: (value) {
                      _password = value;
                    },
                  )),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                child: Text(
                  'انشاء حساب',
                  style: GoogleFonts.cairo(
                    color: Colors.white,
                  ),
                ),
                color: AppTheme.primaryColor,
                onPressed: () async {
                  try {
                    if (_globalKey.currentState.validate()) {
                      print(_email);
                      print(_password);
                      final userCredintial =
                          await _auth.signUp(_email, _password);
                      Modular.to.pushReplacementNamed(Routes.loginPage);
                      return userCredintial.uid;
                    }
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      myKey.currentState.showSnackBar(SnackBar(
                        content: Text('The password provided is too weak'),
                      ));
                    } else if (e.code == 'email-already-in-use') {
                      myKey.currentState.showSnackBar(SnackBar(
                        content:
                            Text('The account already exists for that email.'),
                      ));
                    }
                  } catch (e) {
                    myKey.currentState.showSnackBar(SnackBar(
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
            ],
          ),
        ),
      ),
    );
  }
}
