import 'package:flutter/material.dart';
import 'package:prog/food%20delivery/FadeAnmation.dart';
import 'package:prog/food%20delivery/HomePage.dart';



void main() {
  runApp(MaterialApp(home:  MyApp()));
}
class MyApp extends StatefulWidget{
 const MyApp({super.key});
  @override
  State <MyApp> createState() => _MyAppState();
}

class  _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage('assets/images/Three.jpg'),
              fit: BoxFit.cover,
            )
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors:[
                    Colors.black87.withValues(alpha: 0.9),
                    Colors.black87.withValues(alpha: .8),
                    Colors.black87.withValues(alpha: .1),
                  ]
              )
          ),
          child:Padding(padding: EdgeInsets.all(10),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                FadeAnimation(0.5,Text('Taking Order For Deloivery',style: TextStyle(color:Colors.white,fontSize: 60, fontWeight: FontWeight.bold),)),
                SizedBox(
                  height: 20,
                ),
                FadeAnimation(1,Text('See resturants nearby by  \n adding location',style: TextStyle(color: Colors.white,height: 1.4,fontSize: 18),)),
                SizedBox(
                  height: 130,
                ),
                FadeAnimation(0.5,
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors:[
                              Colors.yellow,
                              Colors.orange
                            ]
                            )
                        ),
                        child:MaterialButton(onPressed:(){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));

                        },
                            minWidth: double.infinity,
                            child: FadeAnimation(2.5,Text('Start',style: TextStyle(color: Colors.white),),))
                    )),
                SizedBox(
                  height: 30,),
                FadeAnimation(1.5,
                    Align(
                      child: Text('Now Deliver To your Door 24/7',style: TextStyle(color: Colors.white70,fontSize: 15),),
                    )),
                SizedBox(
                  height: 30,)
              ],
            ) ,
          ) ,

        ),
      ),
    );
  }
}



