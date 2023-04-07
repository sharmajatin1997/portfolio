import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class AreaInformation extends StatelessWidget {
  const AreaInformation({Key? key,required this.title,required this.text}) : super(key: key);

  final String text,title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:defaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Text(title,style: const TextStyle(color:bodyTextColor1,fontSize: 13,fontWeight: FontWeight.w300)),
          Flexible(child: Padding(
            padding: const EdgeInsets.only(left:defaultPadding/4 ),
            child: Text(text,style:const TextStyle(color:bodyTextColor,fontSize: 11),overflow: TextOverflow.ellipsis,),
          ))
        ],
      ),
    );
  }
}