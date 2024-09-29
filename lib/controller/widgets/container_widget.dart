import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerWidget extends StatelessWidget {
  String text;
  String text1;
  String path;
  ContainerWidget({super.key,required this.text,required this.text1,required this.path});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
            children:[ Container(

              height: 170,
              width: 170,
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(10)),
            ),
              Padding(
                padding:  EdgeInsets.only(top: 138,left: 140,),
                child: Container(

                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(path)),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(text,style: GoogleFonts.roboto
                      (color:Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
                  ),
                  height: 50,
                  width: 50,
                ),
              )
            ]
        ),
        Text(text1)
      ],
    );
  }
}
