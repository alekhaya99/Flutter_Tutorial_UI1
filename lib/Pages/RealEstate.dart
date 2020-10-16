import 'package:flutter/material.dart';
import 'package:flutter_tutorial1/Box/App_Baar.dart';
import 'package:flutter_tutorial1/Setup/Setup.dart';
import 'package:flutter_tutorial1/Setup/custom_function.dart';
import 'package:flutter_tutorial1/Widget/Function.dart';

class RealEstate extends StatelessWidget {
  final dynamic itemData;

  const RealEstate({Key key, @required this.itemData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.asset(itemData["image"])),
              Positioned(
                top: 15,
                right: 15,
                child: AppBarBox(
                  width: 50,
                  height: 50,
                  child: Icon(
                    Icons.favorite_border,
                    color: COLOR_BLACK,
                  ),
                ),
              )
            ],
          ),
          addVerticalSpace(15),
          Row(
            children: [
              Text(
                "${formatCurrency(itemData['amount'])}",
                style: themeData.textTheme.headline1,
              ),
              addHorizantalSpace(10),
              Expanded(child:Text(
                "${itemData["address"]}",
                style: themeData.textTheme.bodyText2,
              )),
              addVerticalSpace(10),
              Expanded(
                child: Text(
                  "${itemData["bedrooms"]} bedrooms / ${itemData["bathrooms"]} bathrooms / ${itemData["area"]} sqft  ",
                  style: themeData.textTheme.bodyText2,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
