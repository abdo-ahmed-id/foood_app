import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

class DrawerPage extends StatelessWidget {
  User user = FirebaseAuth.instance.currentUser;
  GoogleSignIn googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DrawerHeader(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.network(user.photoURL ?? ""),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    user.email ?? '',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    user.displayName ?? '',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(color: AppTheme.primaryColor),
          ),
          ListTile(
            title: Text(
              'الرئسية',
              style: GoogleFonts.cairo(color: AppTheme.fontColor),
            ),
            onTap: () {
              Modular.to.pushReplacementNamed(Routes.homePage);
            },
          ),
          ListTile(
            title: Text(
              'الاقسام',
              style: GoogleFonts.cairo(color: AppTheme.fontColor),
            ),
            onTap: () {
              Modular.to.pushNamed(Routes.categoriesPage);
            },
          ),
          ListTile(
            title: Text(
              'البحث',
              style: GoogleFonts.cairo(color: AppTheme.fontColor),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'المكونات',
              style: GoogleFonts.cairo(color: AppTheme.fontColor),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'تسجيل الخروج',
              style: GoogleFonts.cairo(color: AppTheme.fontColor),
            ),
            onTap: () async {
              await googleSignIn.signOut();
              Modular.to.pushReplacementNamed(Routes.loginPage);
            },
          ),
        ],
      ),
    );
  }
}
