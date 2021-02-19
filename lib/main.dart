import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.amberAccent,
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,



      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 List<bool> toggleList =  List.filled(3, false);




  @override
  Widget build(BuildContext context) {

    final textStyle = TextStyle(
      color: Colors.white
    );
    final bigTextStyle = TextStyle(
        color: Colors.white,
      fontSize: 30
    );

    return Scaffold(
      backgroundColor: Colors.grey[500],
      body: Center(

        child: Column(
          children: [
            Container(
              color: Colors.pink,
              width: MediaQuery.of(context).size.width*0.6,
              height: MediaQuery.of(context).size.height*0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Matovu Farid Nkoba',style: textStyle,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: ToggleButtons(
                        isSelected: toggleList,
                      color: Colors.amberAccent,
                      selectedColor: Colors.purple,
                      children: [
                        Text('Home',style: textStyle),
                        Text('About',style: textStyle),
                        Text('Contacts',style: textStyle)
                      ],),
                    ),
                  ),
                ],
              ),

            ),
            Container(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.6,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex:4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('App Developer',style: bigTextStyle),
                        FlatButton(onPressed: (){}, child: Text('hire me'))
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 6,
                      child: Image.asset('assets/images/webPic.jpg')
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.2,
              color: Colors.blueGrey,
              child: Center(
                child: Text('''
                Welcome to my website
                ''',style: bigTextStyle,),
              ),
            )
          ],
        )
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
