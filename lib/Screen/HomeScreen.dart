import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(

        backgroundColor:  Colors.grey[100],
        elevation: 0,
        leading: Icon(null),
        actions: <Widget> [
          IconButton(onPressed: (){

          },

              icon: Icon(Icons.shopping_basket,color: Colors.grey[800],))

        ],

      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Text("Food Delivery",style: TextStyle(
                    color: Colors.grey[8],
                    fontSize:40,
                    fontWeight: FontWeight.bold,

                  ),),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeCategory(true, "Pizza"),
                        makeCategory(false, "Burger"),
                        makeCategory(false, "Paneer"),
                        makeCategory(false, "Chicken"),
                        makeCategory(false, "Cake"),
                        makeCategory(false, "Drinks"),



                      ],
                    ),
                  ),
                  SizedBox(height: 10,),


                     Padding(
                       padding: const EdgeInsets.only(top: 20.0),
                       child: Text("Free Delivery",style: TextStyle(
                        color: Colors.grey[700],fontSize: 20,
                        fontWeight: FontWeight.bold,
                    ),),
                     ),
                  SizedBox(height: 20,),
                ],
              ),




            ),
            Expanded(child:  Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeItem("assets/images/pFour2.jpg"),
                  makeItem("assets/images/one.jpg"),
                  makeItem("assets/images/pFour.jpg"),
                  makeItem("assets/images/coThree.jpg"),
                  makeItem("assets/images/two.jpg"),


                ],
              ),
            )

            ),
            SizedBox(height: 30,),


          ],
        ),
      ),

    );

  }


}
Widget makeCategory(isActive ,title){

  return AspectRatio(
    aspectRatio: isActive ? 3: 2.0/1,
    child: Container(
      margin: EdgeInsets.only(right: 10),
     decoration: BoxDecoration(
       color: isActive ? Colors.yellow[700]:Colors.white,
       borderRadius: BorderRadius.circular(50),
     ),
      child: Align(
        child: Text(title,style: TextStyle(
          color: isActive ? Colors.white : Colors.grey[500],
          fontSize: 18,
          fontWeight: isActive ? FontWeight.bold:FontWeight.w100,
        ),),
      ),

    ),

  );
}
Widget makeItem(image) {
  return AspectRatio(
    aspectRatio: 1/1.72,
    child: GestureDetector(
      child: Container(
        margin: EdgeInsets.only(right: 20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
         image: DecorationImage(
           image: AssetImage(image),
           fit: BoxFit.cover,
         )

        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),


            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [.2,.9],
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),

              ]
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children:<Widget> [
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.favorite,color: Colors.white,),
                )

              ],
            ),
          ),
        ),
      ),

    ),

  );
}