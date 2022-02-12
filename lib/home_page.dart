import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
       color: Colors.white54,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
              //color: Colors.brown.withBlue(1),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "B",
                      style: TextStyle(fontSize: height * 0.04, fontWeight: FontWeight.bold, color: Colors.black)
                    ),

                    TextSpan(text: "ook",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54)
                    ),

                    TextSpan(text: "P",
                      style: TextStyle(fontSize: height * 0.04, fontWeight: FontWeight.bold, color: Colors.black)
                    ),

                    TextSpan(text: "lug",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54)
                    ),
                  ]
              ) ),

                  Row(
                    children: [
                      TextButton(child: Text("Sign in"), onPressed: (){},),
                      SizedBox(width: 5.0,),

                      Text("|"),

                      SizedBox(width: 5.0,),

                      TextButton(child: Text("Sign up"), onPressed: (){},),
                    ],
                  )
                ],
              ),
            ),


            Container(
              width: width,// * 0.7,
              height: height * 0.6,
              child: Image.network("https://cdn.pixabay.com/photo/2016/02/16/21/07/books-1204029_1280.jpg", fit: BoxFit.fill,),
            ),

            SizedBox(height: 20.0),

            Container(
              width: width,
              alignment: Alignment.center,

              child: Text("ALL YOUR BOOKS", style: TextStyle(letterSpacing: 2.0, fontSize: height * 0.05),),
            ),

            Container(
              width: width,
              alignment: Alignment.center,

              child: Text("IN ONE PLACE", style: TextStyle(letterSpacing: 2.0, fontSize: height * 0.05),),
            ),

            SizedBox(height: 10.0),

            Container(
              width: width,
              alignment: Alignment.center,

              child: Text("Enjoy unlimited access to a wide range of books for free!", style: TextStyle(letterSpacing: 2.0, fontSize: height * 0.015),),
            ),

            Expanded(
              child: Container(
                //width: width,
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.bottomRight,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.network("https://www.clipartmax.com/png/middle/4-41427_instagram-png-icon-instagram-logo-transparent.png"),
                      ),
                      onTap: (){},
                    ),

                    SizedBox(
                      width: 10.0,
                    ),

                    InkWell
                      (
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.network("https://pngset.com/images/twitter-square-logo-shark-animal-symbol-bird-transparent-png-968575.png"),
                      ),
                      onTap: (){},

                    ),

                    SizedBox(
                      width: 10.0,
                    ),

                    InkWell(
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.network("https://www.pxpng.com/public/uploads/small/216309355938oym2s9wdeuneofw8xzx6aek7bqh2bifshuovge55l5a9lgf4tfqmhds3q64a1hpd0swewnfq2lvpps848fa2nicez02tycybflc.png", fit: BoxFit.fill,),
                      ),
                      onTap: (){},
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
