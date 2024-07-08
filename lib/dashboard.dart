import 'dart:math';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  var height, width;
  List imgData = [
    "images/mcqs.png",
    "images/quiz.png",
    "images/pastpapers.png",
    "images/pdf.png",
    "images/job.png",
    "images/about.png",
    "images/about.png",
  ];
  List titles = ["MCQS","QUIZ","PAPERS","PDF","JOBS","ABOUT","zzzz"];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      //body: SingleChildScrollView(
        body: Container(
          color: const Color.fromRGBO(63, 81, 181, 1),
          //height: height,
          width: width,
          child: Column(children: [
            Container(    //CAJA1 ##########################
              decoration: BoxDecoration(),
              height: height * 0.23,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(    //header icons
                  padding: EdgeInsets.only(top: 35,left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    InkWell(    //header icon menu
                      onTap: (){},
                      child: Icon(Icons.sort, color: Colors.white,size: 40,),
                    ),
                    Container(    //header icon user
                      height: 50,width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        image: DecorationImage(image: AssetImage("images/woman.png"))
                      ),
                    ),
                  ],),
                ),
                Padding(    //header text presentation
                  padding: EdgeInsets.only(top: 20,left: 30,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      "Dashboard", 
                      style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w500,letterSpacing: 1),
                    ),
                    //SizedBox(height: 2,),  // separacion
                    Text(
                      "Last update: 6 Jul 2024", 
                      style: TextStyle(fontSize: 16,color: Colors.white54,letterSpacing: 1),
                    ),
                  ],),
                ),
              ],),
            ),
            Expanded(   //SingleChildScrollView
              child: Container(    //CAJA2 ##########################
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )
                ),
                //height: height,  //
                width: width,
                padding: EdgeInsets.only(bottom: 20),
                child: GridView.builder(  //builder contruye en tiempo de ejecucion
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,  //nro de columnas del grid
                    childAspectRatio: 1.1,mainAxisSpacing: 25
                  ),
                  shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),  //evita el desplazamiento en SingleChildScrollView
                  itemCount: imgData.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Tap'),)); //showMessage
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black26, spreadRadius: 1,blurRadius: 6)
                          ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(imgData[index], width: 100,),
                            Text(
                              titles[index], 
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],),
        ),
      //)
      
    );
  }
}