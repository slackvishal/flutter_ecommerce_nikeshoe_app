import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyMainPage(),
    );
  }
}

class MyMainPage extends StatefulWidget {
  MyMainPage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double height = screenSize.height;
    double width = screenSize.width;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.0)
                        )
                      ),
                      child: Icon(Icons.arrow_back_ios, color: Colors.black,),
                    ),
                    Image.asset("assets/nike.png", height: 80.0, width: 80.0,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Stack(
                        children: <Widget>[
                          Icon(Icons.shopping_cart, color: Colors.white, size: 35.0,),
                          Positioned(
                            left: 15.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.orangeAccent,
                              radius: 8.0,
                              child: Text("1", style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0
                              ),),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 30.0,),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Container(
                  width: width,
                  height: height * 0.35,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: width * 0.6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("AH0287-110", style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0
                                ),),
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Text("NIKE AIR FORCE 1'07 LIMITED EDITION", style: TextStyle(
                              color: Colors.white,
                              fontSize: 26.0,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 10.0,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.yellow[700],),
                                Icon(Icons.star, color: Colors.yellow[700],),
                                Icon(Icons.star, color: Colors.yellow[700],),
                                Icon(Icons.star, color: Colors.yellow[700],),
                                Icon(Icons.star, color: Colors.yellow[700],),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                              children: <Widget>[
                                Text("\$299", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28.0
                                ),),
                                SizedBox(width: 10.0,),
                                Text("\$350", style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14.0
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          color: Colors.grey[800],
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 12.0
                            )
                          ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Image.asset("assets/scale.png", height: 30.0, width: 30.0,),
                              Icon(Icons.favorite_border, color: Colors.white, size: 40.0,),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(60.0),
                                  border: Border.all(color: Colors.black)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text("Buy", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.0
                                  ),),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 70.0,),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: width * 0.6,
                      child: Image.asset("assets/shoe1.png", height: 150.0, width: 150.0,),
                    ),
                    Spacer(),
                    Container(
                      width: width * 0.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/shoe2.png", height: 70.0, width: 70.0,),
                          SizedBox(height: 10.0,),
                          Image.asset("assets/shoe1.png", height: 70.0, width: 70.0,),
                          SizedBox(height: 10.0,),
                          Image.asset("assets/shoe2.png", height: 70.0, width: 70.0,),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 20.0,),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text("DETAILS", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text("Lorem ipsum is a simple dummy text of the printing and typsetting industry.", style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14.0
                ),),
              )
            ],
          ),
        ),
      ),

    );
  }
}