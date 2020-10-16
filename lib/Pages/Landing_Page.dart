import 'package:flutter/material.dart';
import 'package:flutter_tutorial1/Box/App_Baar.dart';
import 'package:flutter_tutorial1/Box/MapBox.dart';
import 'package:flutter_tutorial1/Pages/ChoiceOption.dart';
import 'package:flutter_tutorial1/Pages/RealEstate.dart';
import 'package:flutter_tutorial1/Setup/Json.dart';
import 'package:flutter_tutorial1/Setup/Setup.dart';
import 'package:flutter_tutorial1/Widget/Function.dart';
import 'package:flutter_tutorial1/main.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: size.width,
            height: size.height,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppBarBox(
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.menu,
                              color: COLOR_BLACK,
                            ),
                          ),
                          AppBarBox(
                            height: 50,
                            width: 50,
                            child: Icon(
                              Icons.settings,
                              color: COLOR_BLACK,
                            ),
                          )
                        ],
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Text(
                        "City",
                        style: themeData.textTheme.bodyText2,
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Text(
                        "Random Areas",
                        style: themeData.textTheme.headline1,
                      ),
                    ),
                    addVerticalSpace(padding),
                    Padding(
                      padding: sidePadding,
                      child: Divider(
                        height: padding,
                        color: COLOR_GREY,
                      ),
                    ),
                    addVerticalSpace(10),
                    SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children:
                            ["A", "B", "C", "1", "2", "3", "10", "20", "30"]
                                .map((filter) => ChoiceOption(
                                      text: filter,
                                    ))
                                .toList(),
                      ),
                    ),
                    addVerticalSpace(10),
                    Expanded(
                      child: Padding(
                        padding: sidePadding,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: JSON_DATA.length,
                          itemBuilder: (context, index) {
                            return RealEstate(itemData:JSON_DATA[index]);
                          },
                        ),
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: 20,
                  width: size.width,
                  child: Center(
                    child: OptionButton(
                      icon: Icons.map,
                      text: "Map View",
                      width: size.width*0.35,
                    ),
                  ),

                )
              ],
            )),
      ),
    );
  }
}
