

import 'package:flutter/material.dart';

class NumberPad extends StatelessWidget {

  final Function(int)? onSelected;
 const  NumberPad({Key? key, this.onSelected}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
            Row(
               children: [
                  buildNumber(context, 1),
                   buildNumber(context, 2),
                    buildNumber(context, 3),
               ],
             ),
              Row(
               children: [
                  buildNumber(context, 4),
                   buildNumber(context, 5),
                    buildNumber(context, 6),
               ],
             ),
              Row(
               children: [
                  buildNumber(context, 7),
                   buildNumber(context, 8),
                    buildNumber(context, 9),
               ],
             ),
             Row(
               children: [
                 emptySpace(context, ''),
                   buildNumber(context, 9),
                    buildBackSpace(context)
               ],
             ),
        ],
      ),
    );
  }
  Widget buildNumber(BuildContext context, int digit){
  return Expanded(
    child: GestureDetector(
      onTap: (){
       onSelected!(digit);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10)
          ),
        child: Text(
          digit.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white
          ),
         // style: kFontStyle(context).copyWith(
      //    fontWeight: FontWeight.bold, 
    //      fontSize: 20,
      //   color: brandColor
          ),),
      ),
      ));

}

Widget emptySpace(BuildContext context, String digit){
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
         // color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
      child: Text(
        '',
        textAlign: TextAlign.center,
        ),
  ),
    ));
}

Widget buildBackSpace(BuildContext context, ){
  return  Expanded(
    child: GestureDetector(
      onTap: (){
         onSelected!(-1);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10)
          ),
        child: const Icon(Icons.backspace_rounded, color: Colors.white,)
      ),
      ),
    ),
  );
}
}







