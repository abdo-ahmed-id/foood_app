import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/assets_helper.dart';
import 'package:foood_app/helpers/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class MainFoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => InkWell(
            onTap: () {
              Modular.to.pushNamed(Routes.componentPage);
            },
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Image.asset(
                      AssetsHelper.image_1,
                      fit: BoxFit.cover,
                    ),
                    decoration: BoxDecoration(
                      // color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                    clipBehavior: Clip.antiAlias,
                  ),
                ),
                Expanded(
                  child: Text(
                    'الدجاج الطازج',
                    style: GoogleFonts.cairo(
                      fontSize: 20,
                      color: AppTheme.fontColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
