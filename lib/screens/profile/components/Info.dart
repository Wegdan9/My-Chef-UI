import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Info extends StatelessWidget {
  final String? name;
  final String? email;
  final String? image;
  Info({
    this.name, this.email, this.image,Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * 24,
      child: Stack(
        children: [
          ClipPath(
            child: Container(
              height: SizeConfig.defaultSize! * 15,
              color: kPrimaryColor,
            ),
            clipper: CustomShape(),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: SizeConfig.defaultSize!),
                  height: SizeConfig.defaultSize! * 14,
                  width: SizeConfig.defaultSize! * 14,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: SizeConfig.defaultSize! * 0.8),
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(image!), fit: BoxFit.cover)
                  ),
                ),
                Text(name!, style: TextStyle(fontSize: SizeConfig.defaultSize! * 2.2, color: kTextColor),),
                SizedBox(height: SizeConfig.defaultSize! * 0.5,),
                Text(email!, style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
class CustomShape extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    print('path height: ''$height');
    double width = size.width;
    print('path width: ''$width');
    path.lineTo(0,  height-100);
    path.quadraticBezierTo(width/2, height, width, height -100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {

    return true;
  }

}