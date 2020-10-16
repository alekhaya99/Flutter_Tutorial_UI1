import 'package:flutter/material.dart';
import 'package:flutter_tutorial1/Setup/Setup.dart';

class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData=Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: COLOR_GREY.withAlpha(25),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      margin: const EdgeInsets.only(left:25),
      child: Text(text,style: themeData.textTheme.headline5,),
    );
  }
}
