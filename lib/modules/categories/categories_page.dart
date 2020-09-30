import 'package:flutter/material.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الاقسام',
          style: GoogleFonts.cairo(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppTheme.primaryColor,
      ),
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'المشروبات الساخنة',
                          style: GoogleFonts.cairo(
                              fontSize: 20,
                              color: AppTheme.fontColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FlutterLogo(),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 10,
                ),
              ],
            );
          }),
    );
  }
}
