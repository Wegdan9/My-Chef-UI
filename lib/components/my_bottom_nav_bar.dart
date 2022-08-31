import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mychef/constants.dart';
import 'package:mychef/size_config.dart';
import 'package:provider/provider.dart';

import '../models/nav_item.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavItems>(
      builder: (context, value, child) =>  Container(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 3),
        //height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:[ BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 30,
            color: Color(0xff4b1a39).withOpacity(0.5)
          )]
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(value.items.length, (index) =>
                  buildIconNavBarItem(icon: value.items[index].icon,
                      press: (){
                    value.changeNavIndex(index: index);
                    print(index);
                    if(value.items[index].destinationChecker()){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => value.items[index].destination!,));
                    }
                      },
                      isActive: value.selectedIndex == index ? true:false)),
            ],
          ),
        ),
      ),
    );
  }

  IconButton buildIconNavBarItem({String? icon , VoidCallback? press, bool isActive = false}) {
    return IconButton(
      icon: SvgPicture.asset(icon!, color: isActive ? kPrimaryColor : Color(0xffd1d4d4), height: SizeConfig.defaultSize! * 2.2,),
      onPressed: press, );
  }
}