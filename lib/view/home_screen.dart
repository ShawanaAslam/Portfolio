import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/widgets/container_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.orange,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 300,
                    width: 600,
                   // color: Colors.red,
                   child: Expanded(
                     flex: 50,
                     child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                  Text('  My name is',
                                    style: GoogleFonts.roboto
                                    (fontSize: 40,)
                                        //fontWeight: FontWeight.w300),
                                  ),

                                  Text('   Shawana Aslam',
                                      style: GoogleFonts.roboto
                                       (fontWeight: FontWeight.w600,fontSize: 60),
                                  ),
                                   SizedBox(height: 5,),
                                   Text("I'm a Flutter Developer",
                                     style: GoogleFonts.roboto()
                                       //(fontWeight: FontWeight.w600),
                                   ),
                                   SizedBox(height: 50,),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Container(
                                         decoration:BoxDecoration(
                                             color: Colors.orangeAccent,
                                             borderRadius: BorderRadius.circular(5)),
                                         height: 30,width: 60,child: Center(child: Text('C++',style: GoogleFonts.roboto
                                         (fontWeight: FontWeight.w600,fontSize: 16),)),),
                                       SizedBox(width: 5,),
                                       Container(
                                         decoration: BoxDecoration(
                                             color: Colors.orange.shade700,
                                             borderRadius: BorderRadius.circular(5)),
                                         height: 30,width: 70,child: Center(child: Text('Dart',style: GoogleFonts.roboto
                                         (color:Colors.white,fontWeight: FontWeight.w600,fontSize: 16),)),),
                                     ],
                                   ),

                                   SizedBox(height: 5,),
                                   Padding(
                                     padding: EdgeInsets.only(left: 32),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         Container(
                                           decoration: BoxDecoration(
                                               color: Colors.black,
                                               borderRadius: BorderRadius.circular(5)),
                                           height: 30,width: 60,child: Center(child: Text('Sql',style: GoogleFonts.roboto
                                           (color:Colors.white,fontWeight: FontWeight.w600,fontSize: 16),)),),
                                         SizedBox(width: 5,),
                                         Container(
                                           decoration: BoxDecoration(
                                               color: Colors.grey.shade400,
                                               borderRadius: BorderRadius.circular(5)),height: 30,width: 100,child: Center(child: Text('Firebase',style: GoogleFonts.roboto
                                           (fontWeight: FontWeight.w600,fontSize: 16),)),),
                                       ],
                                     ),
                                   ),
                                 ],
                               )),
                  ),
                 // Container(
                   // color: Colors.blue,
                   // height: 300,
                    //width: 600,
                    //child:
                    Expanded(
                      flex: 20,
                      child:CircleAvatar(
                        radius: 140,
                        //height:300 ,
                        //width: 300,
                        //decoration: BoxDecoration(
                         // borderRadius: BorderRadius.circular(60)
                        //),
                        child: Image.asset('Pic.jpg')
                          //,fit: BoxFit.fill,)
                        //backgroundImage: AssetImage('Pic.jpg',),
                     //   Ink.image(image: AssetImage('Pic.jpg')),
                      ),),
                 // ),

                ],
              ),
              Expanded(child:
              Container(
               // color: Colors.black,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Row(children: [
                        Text('Recent Projects ', style: GoogleFonts.roboto
                          (fontSize: 22,fontWeight: FontWeight.w600),)
                      ],),
                    ),
                    SizedBox(height: 30,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding:EdgeInsets.only(left: 60),
                            child: ContainerWidget(text: '01', text1: 'hhhh', path: ''),
                          ),
                          SizedBox(width: 8,),
                          ContainerWidget(text: '02', text1: 'hhhh', path: ''),
                          SizedBox(width: 8,),
                          ContainerWidget(text: '03', text1: 'hhhh', path: ''),
                        ],
                      ),
                    )
                  ],
                ),

              ))
              // Row(
              //   children: [
              //
              //
              //     Expanded(
              //         flex:50,
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           crossAxisAlignment: CrossAxisAlignment.center,
              //           children: [
              //            Text('  My name is',
              //              style: GoogleFonts.roboto
              //               (fontSize: 30,fontWeight: FontWeight.w300),
              //            ),
              //
              //            Text('   Shawana Aslam',
              //                style: GoogleFonts.roboto
              //                 (fontWeight: FontWeight.w600,fontSize: 20),
              //            ),
              //             SizedBox(height: 10,),
              //             Text('ssssssssssssssssssssssss',
              //               style: GoogleFonts.roboto
              //                 (),
              //             ),
              //             SizedBox(height: 20,)
              //           ],
              //         )),
              //     Expanded(
              //         flex:50,
              //         child: Text('sssssssssssssssss'))
              //   ],
              // ),
              // SizedBox(height: 300,),
              // Expanded(
              //     flex:50,
              //     child: Text('sssssssssssssssss'))

            ],
          ),
        ),
      ),
    );
  }
}
