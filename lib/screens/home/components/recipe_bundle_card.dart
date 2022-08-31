import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/recipe.dart';
import '../../../models/recipe_bundel.dart';
import '../../../size_config.dart';

class RecipeBundleCard extends StatelessWidget {
   final Recipe recipes;
   final VoidCallback press;
   RecipeBundleCard(this.recipes,this.press,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          color: recipes.color,
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 1.8),
        ),
        child: Row(
          children: [
            Expanded(
                child: Padding(
                  padding:  EdgeInsets.all(SizeConfig.defaultSize! * 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(recipes.title!, maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white, fontSize: SizeConfig.defaultSize! * 2.2), ),
                      SizedBox(height: SizeConfig.defaultSize! * 0.5,),
                      Text(recipes.description!, maxLines: 2, overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white54),),
                      Spacer(),
                      buildInfoRow(iconSrc: 'assets/icons/pot.svg', text: '${recipes.recipes} Recipes'),
                      SizedBox(height: SizeConfig.defaultSize! * 0.5),
                      buildInfoRow(iconSrc: 'assets/icons/chef.svg', text: '${recipes.chefs} Chefs'),
                      Spacer(),
                    ],
                  ),
                )
            ),

            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(recipes.imageSrc!, fit: BoxFit.cover, alignment: Alignment.centerLeft,),
            )
          ],
        ),
      ),
    );
  }

  Row buildInfoRow({String? iconSrc, String? text}) {
    return Row(
      children:[
        SvgPicture.asset(iconSrc!),
        SizedBox(width: SizeConfig.defaultSize!,),
        Text(text!, style: TextStyle(color: Colors.white),)
      ],
    );
  }
}