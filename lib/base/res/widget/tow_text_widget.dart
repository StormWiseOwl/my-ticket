import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../Styles/app_styles.dart';

class TowTextWidget extends StatelessWidget {
  const TowTextWidget({Key ? key, required this.bigtxt, required this.lowtxt}) : super(key : key);
  final String bigtxt ;
  final String lowtxt ;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment :  MainAxisAlignment.spaceBetween,
      children:[
        Text( bigtxt ,style: appStyle.headlineStyle2, ),
        InkWell(
          onTap: (){},
          child:Text(lowtxt,style: appStyle.SmallText.copyWith(
            color: appStyle.primaryColor ,
          ),),
        ),
         ],
    );
  }
}
