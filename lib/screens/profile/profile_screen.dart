import 'package:flutter/material.dart';
import 'package:mychef/components/my_bottom_nav_bar.dart';
import 'package:mychef/constants.dart';
import '/screens/profile/components/body.dart';
import 'package:mychef/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){},
      ),
      title: Text('Profile'),
      centerTitle: true,
      actions: [
        TextButton(
            child: Text('Edit', style: TextStyle(color: Colors.white, fontSize: SizeConfig.defaultSize! * 1.6, fontWeight: FontWeight.bold),),
            onPressed: (){}, )
      ],
    );
  }
}
