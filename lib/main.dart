import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 5, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.indigo[500],
        shadowColor: Colors.black.withOpacity(0.5),
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: Icon(Icons.home, color: Colors.white,),),
            new Tab(icon: Icon(Icons.chat, color: Colors.white,),),
            new Tab(icon: Icon(Icons.search, color: Colors.white,),),
            new Tab(icon: Icon(Icons.group, color: Colors.white,),),
            new Tab(icon: Icon(Icons.person, color: Colors.white, size: 40,),)
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile', style: TextStyle(color: Colors.white),),
        elevation: 0,
        backgroundColor: Colors.indigo[500],

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
          onPressed:(){}
        
        ), 
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white,),
            onPressed: (){},
          )
        ],
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2-40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      blurRadius: 20,
                      spreadRadius: 10,

                    )
                  ],
                  color: Colors.indigo[500],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),

                  )

                ),
                child: Column(

                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.only(left: 130),
                          child: Container(

                            height: 105,
                            width: 105,
                            decoration: BoxDecoration(
                                color: Colors.indigo[500],
                                borderRadius: BorderRadius.circular(52.5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.yellow,
                                    spreadRadius:2,
                                  )
                                ]

                            ),

                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage('assets/selena.jpg'),
                            ),
                          ),
                        ),


                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('@selenagomez', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),),
                    Padding(
                      padding: const EdgeInsets.only( bottom: 35),
                      child: Text('Selena Gomez', style: TextStyle(color: Colors.white,fontSize: 23, fontWeight: FontWeight.bold  ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.indigo[500],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.indigo[500],
                                    spreadRadius:1,
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.photo_camera, color: Colors.white,),
                                  SizedBox(height: 3,),
                                  Text('Camera', style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),

                          Container(

                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.indigo[500],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.indigo[500],
                                    spreadRadius:1,
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(4.5),
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.fingerprint, color: Colors.white,),
                                  SizedBox(height: 3,),
                                  Text('Security', style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),

                          Container(

                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.indigo[500],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.indigo[500],
                                    spreadRadius:1,
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.phone, color: Colors.white,),
                                  SizedBox(height: 3,),
                                  Text('Phone', style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                          Container(

                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.indigo[500],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.indigo[500],
                                    spreadRadius:1,
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.settings, color: Colors.white,),
                                  SizedBox(height: 3,),
                                  Text('Settings', style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          )


                        ],
                      ),
                    ),
                  ],
                ),

                ),
              Container(
                padding: EdgeInsets.only(top: 40, right: 34, left: 34),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(

                            height: 60,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.indigo[500],
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius:6,
                                    blurRadius: 4
                                    
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.dashboard, color: Colors.white,),
                                  Text('Dashboard', style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                          Container(

                            height: 60,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.indigo[500],
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius:6,
                                    blurRadius: 4
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.account_balance, color: Colors.white),
                                  Text('Balance', style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                          Container(

                            height: 60,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.indigo[500],
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius:6,
                                    blurRadius: 4
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.credit_card, color: Colors.white,),
                                  Text('CreditCard', style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(

                            height: 60,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.indigo[500],
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius:6,
                                    blurRadius: 4
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                Icon(Icons.language,color: Colors.white,),
                                Text('Language', style: TextStyle(color: Colors.white),)
                              ],
                              ),
                            ),
                          ),
                          Container(

                            height: 60,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.indigo[500],
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius:6,
                                    blurRadius: 4
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(children: <Widget>[
                                Icon(Icons.question_answer,color: Colors.white,),
                                Text('Questions', style: TextStyle(color: Colors.white),)

                              ],
                              ),
                            ),
                          ),
                          Container(

                            height: 60,
                            width: 85,
                            decoration: BoxDecoration(


                                color: Colors.indigo[500],
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius:6,
                                    blurRadius: 4
                                  )
                                ]

                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(children: <Widget>[
                                Icon(Icons.visibility,color: Colors.white,),
                                Text('Visibility', style: TextStyle(color: Colors.white),)

                              ],
                              ),
                            ),
                          ),


                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        
    );
  }
}
