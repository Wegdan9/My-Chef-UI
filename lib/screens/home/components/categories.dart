import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['All', 'Indian', 'Italian', 'Mexican', 'Chinese'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize! * 2),
      child: SizedBox(
        height: SizeConfig.defaultSize! * 3.5,
        child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCategoryItem(index),),
      ),
    );
  }

  Widget buildCategoryItem(int index) => GestureDetector(
    onTap: (){
      setState(() {
        selectedIndex = index;
      });
    },
    child: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: SizeConfig.defaultSize! *2),
      decoration: BoxDecoration(
          color: selectedIndex == index ? Color(0xffef3ee) : Colors.transparent,
          //borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 1.6),
          border: Border(bottom: BorderSide(color: selectedIndex == index ? kPrimaryColor : Colors.transparent, width: 2))


      ),
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2, vertical: SizeConfig.defaultSize! * 0.5),
      child: Text(categories[index], style: TextStyle(fontWeight: FontWeight.bold, color: selectedIndex == index ? kPrimaryColor : Colors.grey),),
    ),
  );
}