import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mychef/size_config.dart';
import '../../components/my_bottom_nav_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
   // print(SizeConfig.defaultSize! * 3.5);
    return Scaffold(
    appBar: buildAppBar(),
    body: Body(),
    bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/menu.svg'),
      onPressed: (){},
    ),
    title: Image.asset('assets/images/logo.png'),
    centerTitle: true,
    actions: [
      IconButton(
          icon: SvgPicture.asset('assets/icons/search.svg'),
          onPressed: (){}, ),
      SizedBox(width: SizeConfig.defaultSize! * 0.5,)
    ],
  );
  }
}


