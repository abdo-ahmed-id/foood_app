import 'package:flutter/material.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/helpers/assets_helper.dart';

class MainFoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.primaryColor,
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 3,
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => InkWell(
            onTap: () {},
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Image.asset(
                      AssetsHelper.image_2,
                      fit: BoxFit.contain,
                    ),
                    decoration: BoxDecoration(
                      // color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Expanded(
                    child: Text(
                  'hello',
                  style: TextStyle(color: Colors.white),
                )),
              ],
            ),
          ),
        ));
  }
}
