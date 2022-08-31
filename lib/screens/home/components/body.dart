import 'package:flutter/material.dart';
import 'package:mychef/models/recipe_bundel.dart';
import 'package:mychef/size_config.dart';
import '/screens/home/components/recipe_bundle_card.dart';


import 'categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Categories(),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2),
              child: GridView.builder(
                itemCount: recipeBundles.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: SizeConfig.orientation == Orientation.landscape? 2 : 1,
                    mainAxisSpacing: 20,
                    childAspectRatio: 1.65,
                    crossAxisSpacing: SizeConfig.orientation == Orientation.landscape ? SizeConfig.defaultSize! * 2 :0
                ),
                  itemBuilder:(context, index) =>  RecipeBundleCard(recipeBundles[index], (){})),
            ),
          ),
        ],
      ),
    );
  }
}


