import 'package:flutter/material.dart';
import '/screens/profile/components/profile_menu_item.dart';
import 'package:mychef/size_config.dart';

import 'Info.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Info(name: 'Wegdan Sobhy',email: 'wegdansobhy0@gmail.com', image: 'assets/images/picw.png',),
          SizedBox(height: SizeConfig.defaultSize! * 2,),
          ProfileMenuItem(title: 'Saved Recipes',iconSrc: 'assets/icons/bookmark_fill.svg',press: (){},),
          ProfileMenuItem(title: 'Super Plan',iconSrc: 'assets/icons/chef_color.svg',press: (){},),
          ProfileMenuItem(title: 'Change Language',iconSrc: 'assets/icons/language.svg',press: (){},),
          ProfileMenuItem(title: 'Help',iconSrc: 'assets/icons/info.svg',press: (){},),
        ],
      ),
    );
  }
}



