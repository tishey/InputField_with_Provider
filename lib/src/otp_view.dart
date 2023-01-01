 import 'package:flutter/material.dart';
import 'package:otp_pin_input/widget/number_pad.dart';

class OTPView extends StatefulWidget {
  const OTPView({super.key});

  @override
  State<OTPView> createState() => _OTPViewState();
}

    String code = '';
    final bool isCheck = false;


class _OTPViewState extends State<OTPView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
       child: Column(

         children: [
          //  UIHelper.verticalSpaceLarge,
          //  UIHelper.verticalSpaceLarge,
          //  Padding(
          //    padding: const EdgeInsets.symmetric(horizontal: 15),
          //    child: Text( getViewDetail.otpTitle!,
          //    style: kFontStyle(context).copyWith(
          //      fontSize: 15,
          //    ),
          //    ),
          //  ),
          //   UIHelper.verticalSpaceSmall,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCodeField(context, code.isNotEmpty ? code.substring(0, 1) : ''),
                buildCodeField(context, code.length > 1 ? code.substring(1, 2) : ''),
                buildCodeField(context, code.length > 2 ? code.substring(2, 3) : ''),
                buildCodeField(context, code.length > 3 ? code.substring(3, 4) : ''),
                buildCodeField(context, code.length > 4 ? code.substring(4, 5) : ''),
                buildCodeField(context, code.length > 5 ? code.substring(5, 6) : ''),
              
              ],
            ),
        //    UIHelper.verticalSpaceMedium,
            // FleetButton(
            //   width: 320,
            //   onClick: () => navigateToRoute(context, UserPersonalView()),
            //   label: 'Continue'),
             const  Spacer(),
             NumberPad(
               onSelected: (value){
                 setState(() {
                   if(value != -1){
                     if(code.length < 6){
                       code = code + value.toString();
                     } 
                   } 
                   else {
                     code = code.substring(0, code.length -1 );
                   }
                 });
                //  print(code);
               }
             )
         ],
       )
      ),
    );
  }

  Widget buildCodeField(BuildContext context, String ncode){
  return Container(
    height: 45,
    width: 45,
    margin: const EdgeInsets.all(5),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: code.length < 6  ? Colors.grey.withOpacity(0.2) : Colors.black,
      width: 1)
    ),
    child: Center(child: Text(ncode,
    //  style: kFontStyle(context).copyWith(
    //   fontSize: 15,
    //   fontWeight: FontWeight.bold),
      )
      ),
  );
}
}


