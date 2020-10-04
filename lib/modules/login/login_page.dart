import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/assets_helper.dart';
import 'package:foood_app/helpers/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.perm_identity),
                  hintText: 'اسم المستخدم او البريد الالكتروني',
                  contentPadding: const EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppTheme.primaryColor,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  hintText: 'كلمة المرور',
                  contentPadding: const EdgeInsets.all(10),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppTheme.primaryColor,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              child: Text(
                'تسجيل الدخول',
                style: GoogleFonts.cairo(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold),
                ),
              ),
              color: AppTheme.primaryColor,
              onPressed: () {
                Modular.to.pushReplacementNamed(Routes.homePage);
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsHelper.facebookLogo,
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  width: 30,
                ),
                Image.asset(
                  AssetsHelper.instgramLogo,
                  height: 80,
                  width: 80,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
