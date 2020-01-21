import 'package:flutter/material.dart';
import 'package:flutter_app/LoginPage/LoginPage.dart';

void main(){
  runApp(MaterialApp(
  title: 'Login App',
    home: HomeScreen()
  ));
}

class HomeScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context){
    //TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Center(
          child: Container(
            width: 400,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
              // Image.asset('image/logo.png', width= 100, height= 100),
                LoginPage(Icon(Icons.person, color: Colors.white),'Username'),
                LoginPage(Icon(Icons.lock, color: Colors.white),'Password'),
                Container(
                  width: 150,
                  child: RaisedButton(onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainMenu()),
                  );},color: Colors.deepOrange, textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                     child: Text('Login',style: TextStyle(
                      fontSize: 20.0),))
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MainMenu extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(
    title: Text("Home"),
  ),
   drawer: Drawer(
     child: ListView(
       children: <Widget>[
         DrawerHeader(
             decoration: BoxDecoration(
               color: Colors.red,
             ),
            child: Text('Name')),
         CustomListTile(Icons.home, 'Home',()=>{Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainMenu()),
        )} ),
         CustomListTile(Icons.person, 'Profile',()=>{Navigator.push(
           context, MaterialPageRoute(builder: (context) => profile()),
         )} ),
         CustomListTile(Icons.card_travel , 'Ticket',()=>{Navigator.push(
           context, MaterialPageRoute(builder: (context) => ticket()),
         )} ),
         CustomListTile(Icons.lock, 'Log Out',()=>{Navigator.push(
           context, MaterialPageRoute(builder: (context) => HomeScreen()),
         )} ),
       ]
     )
   ),
     body: Container(
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
       color: Colors.lightBlueAccent,
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text('FROM: ',style: TextStyle(fontSize: 20.0),),
                 RaisedButton( onPressed: (){Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => listFrom()),
                 );},),

               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text('TO:',style: TextStyle(fontSize: 20.0)),
                 RaisedButton( onPressed: (){Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => listTo()),
                 );},),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text('Date: ',style: TextStyle(fontSize: 20.0)),
                 RaisedButton( onPressed: (){},),
               ],
             ),
           ],
         ),
       ),
     ),
  );
  }
  }


  class CustomListTile extends StatelessWidget{

  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: Colors.blue,
          onTap: onTap,
//        onTap:()=>{Navigator.push(
//        context,
//        MaterialPageRoute(builder: (context) => MainMenu()),
//        )},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.person),
                  Text(text,style: TextStyle(fontSize: 16.0),)
                ]
            ),
            Icon(Icons.arrow_right),
          ]
        )
      ),
    );
  }

}

class ticket extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Ticket'),
      ),
    );
  }
}

class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
    );
  }
}

class listFrom extends StatelessWidget{

  String city;

 // listFrom(this.city);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Center(
          child: Container(
            width: 400,
            height: 400,
            color: Colors.lightBlueAccent,
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: RaisedButton(onPressed: (){},
                         child: Text('JOHOR',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                      ),
                    ),
                    Container(
                      child: RaisedButton(onPressed: (){},
                        child: Text('KEDAH',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                    ),
                    Container(
                      child: RaisedButton(onPressed: (){},
                        child: Text('PAHANG',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                    ),
                    Container(
                      child: RaisedButton(onPressed: (){},
                        child: Text('TERENGGANU',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                    ),
                    Container(
                      child: RaisedButton(onPressed: (){},
                        child: Text('KELANTAN',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                    ),
                    Container(
                      child: RaisedButton(onPressed: (){},
                        child: Text('PERAK',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                    ),
                    Container(
                      child: RaisedButton(onPressed: (){},
                        child: Text('PERLIS',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: RaisedButton(onPressed: (){},
                          child: Text('P.PINAG',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                      ),
                    ),
                    Container(
                      child: RaisedButton(onPressed: (){},
                        child: Text('MELAKA',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                    ),
                    Container(
                      child: RaisedButton(onPressed: (){},
                        child: Text('SABAH',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                    ),
                    Container(
                      child: RaisedButton(onPressed: (){},
                        child: Text('SARAWAK',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                    ),
                    Container(
                      child: RaisedButton(onPressed: (){},
                        child: Text('SELANGOR',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                    ),
                    Container(
                      child: RaisedButton(onPressed: (){},
                        child: Text('N.SEMBILAN',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}

class listTo extends StatelessWidget{

  String city;

  // listFrom(this.city);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Center(
            child: Container(
              width: 400,
              height: 400,
              color: Colors.lightBlueAccent,
              child: Row(
                children: <Widget>[
                  Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: RaisedButton(onPressed: (){},
                              child: Text('JOHOR',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                          ),
                        ),
                        Container(
                          child: RaisedButton(onPressed: (){},
                            child: Text('KEDAH',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                        ),
                        Container(
                          child: RaisedButton(onPressed: (){},
                            child: Text('PAHANG',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                        ),
                        Container(
                          child: RaisedButton(onPressed: (){},
                            child: Text('TERENGGANU',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                        ),
                        Container(
                          child: RaisedButton(onPressed: (){},
                            child: Text('KELANTAN',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                        ),
                        Container(
                          child: RaisedButton(onPressed: (){},
                            child: Text('PERAK',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                        ),
                        Container(
                          child: RaisedButton(onPressed: (){},
                            child: Text('PERLIS',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: RaisedButton(onPressed: (){},
                            child: Text('P.PINAG',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                        ),
                      ),
                      Container(
                        child: RaisedButton(onPressed: (){},
                          child: Text('MELAKA',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                      ),
                      Container(
                        child: RaisedButton(onPressed: (){},
                          child: Text('SABAH',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                      ),
                      Container(
                        child: RaisedButton(onPressed: (){},
                          child: Text('SARAWAK',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                      ),
                      Container(
                        child: RaisedButton(onPressed: (){},
                          child: Text('SELANGOR',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                      ),
                      Container(
                        child: RaisedButton(onPressed: (){},
                          child: Text('N.SEMBILAN',style: TextStyle(fontSize: 20.0),),color: Colors.deepOrange, textColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),),

                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}