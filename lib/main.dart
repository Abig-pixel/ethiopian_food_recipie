import 'package:flutter/material.dart';
import 'package:food_recipe/views/home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:food_recipe/page2.dart';

void main() => runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage()),
    );
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  //image: AssetImage("assets/images/kit.jpg"),
                  image: AssetImage("assets/images/kit_r_crop.png"),
                  fit: BoxFit.cover),
           

            ),
          ),
          Container(
            decoration: BoxDecoration(
               // borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    Colors.transparent,
                    Colors.transparent,
                  ],
                  end: Alignment.topCenter,
          ),),),
          Container(
              margin: const EdgeInsets.only(
                  top: 410.0, left: 50, right: 50, bottom: 15),
              //margin: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Text("Habesha Food",
                     
                          style:GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 30) ,
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                          ),
                          ),
                   Text(
                    "Recipe ",
                    /*style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 40),*/
                        style:GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 30) ,
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                          ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        //Icon(Icons.location_on_outlined, color: Colors.white),

                        const Text("Let's make Ethiopian delicious dish",
                            style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15)),
                      ],
                    ),
                  ),
                  const Spacer(flex: 3),
                
                  TextButton.icon(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        backgroundColor: const Color.fromARGB(255, 112, 205, 141),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        minimumSize: const Size(240, 75)),
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => page2()))
                    },
                    icon: const Icon(
                      Icons.arrow_circle_right,
                      color: Colors.white,
                      size: 45,
                    ),
                    label:  Text('Get Started',
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(fontSize: 15) ,
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                          ),),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  page() {}
}
