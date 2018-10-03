import 'package:flutter/material.dart';

class Display extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.3, 
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                child: Image(image: AssetImage('assets/logo.png'),),

              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.5,
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,

                    stops: [0.3, 0.6, 0.8, 0.9],
                    colors: [
                      Colors.amber[800],
                      Colors.red[400],
                      Colors.pink[300],
                      Colors.pink[200],
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10.0),
                        width: MediaQuery.of(context).size.width*0.25,
                        child: Column(
                          children: <Widget>[
                            Text("12", style:
                            TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),),
                            Text("Post",style:
                            TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,color: Colors.white),),
                            SizedBox(height: 40.0,),
                            Text("23", style:
                            TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),),
                            Text("Followers",style:
                            TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,color: Colors.white),),
                            SizedBox(height: 40.0,),
                            Text("56", style:
                            TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold,color: Colors.white),),
                            Text("Following",style:
                            TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,color: Colors.white),),

                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.67,

                        child: Column(
                          children: <Widget>[
                            Text("Scott Colon",style:
                            TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.white),),
                            Text("Photographer",style:
                            TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,color: Colors.white),),
                            SizedBox(height: 20.0,),
                            Text("Lorem Ipsum is simply dummy text of a printing "
                                "and typesetting industry. Lorem Ipsum has been the industry's "
                                "standard dummy text ever since the 1500s, when an"
                                " unknown printer took a galley of type and scrambled "
                                "it to make a type of the specimen book. It has survived not"
                                " typesetting, remaining and essentially unchanged.",style:
                                    TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500,color: Colors.white),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
       Positioned(
         top:MediaQuery.of(context).size.height*0.33,
         left: 0.0,
         child:RaisedButton(
           elevation: 30.0,
           child: Icon(Icons.add,color: Colors.white,size: 40.0,),
           color: Colors.pink[400],
           padding: EdgeInsets.symmetric(horizontal: 80.0,vertical: 15.0),
           shape: CircleBorder(
           ),
           onPressed: (){

           },
         ),
       )
        ],
      ),
    );
  }

}