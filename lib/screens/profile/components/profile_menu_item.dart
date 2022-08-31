import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProfileMenuItem extends StatelessWidget {
  final String? iconSrc;
  final String? title;
  final VoidCallback? press;

  ProfileMenuItem({Key? key,  this.iconSrc,  this.title, this.press,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2, vertical: SizeConfig.defaultSize! * 3),
        child: SafeArea(
          child: Row(
            children: [
              SvgPicture.asset(iconSrc!),
              SizedBox(width: SizeConfig.defaultSize! * 2,),
              Text(title!, style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.6, color: kTextLightColor),),
              Spacer(),
              Icon(Icons.arrow_forward_ios, size: SizeConfig.defaultSize! * 1.6, color: kTextLightColor,)
            ],
          ),
        ),
      ),
    );
  }
}