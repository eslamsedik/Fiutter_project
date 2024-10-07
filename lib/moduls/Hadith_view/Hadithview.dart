import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HadithContent.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    return Column(
       children: [
         Container(
             height: 230,
             child: Image(image: AssetImage("assets/icons/hadith_header.png"))),
         Divider(),
         Text("الاحاديث",style: theme.textTheme.bodyLarge,),
         Divider(),

         Container(
           height: 370,

             child: Expanded(child: ListView.builder(itemBuilder: (context, index) => InkWell(
               onTap: (){
                 Navigator.pushNamed(context, hadithcontent.routeName,arguments: (index+1).toString());
               },
               child: Padding(

                 padding: const EdgeInsets.all(5.0),
                 child: Text("حديث رقم ${index+1}",style: theme.textTheme.bodyLarge,textAlign: TextAlign.center,),
               ),
             ),itemCount: 30,),))
       ],

    );
  }
}
