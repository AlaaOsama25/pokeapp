import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poke App',
      home: MyHomePage(),
    );
  }
}
int counter=0;
final names = [
  'Venusaur',
  'Squirtle',
  'Psyduck',
  'Pikachu',
  'Meowth',
  'Jigglypuff',
  'Haunter',
  'Cubone',
  'Charmander',
  'Charizard',
  'Bulbasaur',
  'Abra,Kadabra,and Alakazam'
];

final links = [
  'images/Pokemon_Venusaur_art.png',
  'images/Pokemon_Squirtle_art.png',
  'images/Pokemon_Psyduck_art.png',
  'images/Pokemon_Pikachu_art.png',
  'images/Pokemon_Meowth_art.png',
  'images/Pokemon_Jigglypuff_art.png',
  'images/Pokemon_Haunter_art.png',
  'images/Pokemon_Cubone_art.png',
  'images/Pokemon_Charmander_art.png',
  'images/Pokemon_Charizard_art.png',
  'images/Pokemon_Bulbasaur_art.png',
  'images/Pokemon_Abra,_Kadabra,_Alakazam_art.png'
];

//void _pressedbutton (){
//if(links[0] && names[0])
//counter=0;
//}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poke App'),
        centerTitle: true,
        leading: (
            Icon(Icons.menu)
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: GridView.builder(
          itemCount: names.length,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 2
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => _MySecondPageState()),
                );
                setState(() {
                  counter=index;
                });

              },
              child: Container(
                  child: Column(children: [
                    Image.asset('${links[index]}',
                      height: 150,
                      width: 200,
                      //fit: BoxFit.fill,
                    ),
                    SizedBox(height: 10,),
                    Text('${names[index]}'),
                  ]
                  ),
                  height: 440,
                  width: 200,
                  margin: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white

                  )

              ),
            );
          }

      ),
      floatingActionButton: FloatingActionButton(
        child: (
            Icon(Icons.rotate_right,
              color: Colors.white,
            )
        ),
        onPressed: () {},
        backgroundColor: Colors.cyanAccent,
      ),

    );
  }
}

class _MySecondPageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: Text('${names[counter]}'),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 80, 20, 60),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('${links[counter]}',
                  height: 150,
                  width: 150,
                  //fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 10,),
              Text('${names[counter]}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30),
              ),
              SizedBox(height: 10,),
              Text('HEIGHT: 0.99 M',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    fontSize: 13),
              ),
              SizedBox(height: 10,),
              Text('WEIGHT: 13.0 KG',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    fontSize: 13),
              ),
              SizedBox(height: 10,),
              Text('Types',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontSize: 16),
              ),
              SizedBox(height: 20),
              Row(children: [
                Spacer(flex: 5),
                Container(
                  child: Center(
                    child: Text('Grass',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 10),
                    ),
                  ),
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow
                  ),
                ),
                Spacer(flex: 5),
                Container(
                  child: Center(
                    child: Text('Poison',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 10),
                    ),
                  ),
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.yellow
                  ),
                ),
                Spacer(flex: 5,)
              ],),
              SizedBox(height: 10,),
              Text('Weakness',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontSize: 16),
              ),
              SizedBox(height: 20,),
              Row(children: [
                Spacer(flex: 3),
                Container(
                  child: Center(
                    child: Text('Fire',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 10),
                    ),
                  ),
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red
                  ),
                ),
                Spacer(flex: 5),
                Container(
                  child: Center(
                    child: Text('Ice',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 10),
                    ),
                  ),
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red
                  ),
                ),
                Spacer(flex: 5,),
                Container(
                  child: Center(
                    child: Text('Flying',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 10),
                    ),
                  ),
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red
                  ),
                ),
                Spacer(flex: 5,),
                Container(
                  child: Center(
                    child: Text('Psychic',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 10),
                    ),
                  ),
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red
                  ),
                ),
                Spacer(flex: 3,)
              ],
              ),
              SizedBox(height: 10,),
              Text('Next Evolution',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontSize: 16),),
              SizedBox(height: 20,),
              Row(children: [
                Spacer(flex: 5),
                Container(
                  child: Center(
                    child: Text('Venusaur',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 10),
                    ),
                  ),
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green
                  ),
                ),
                Spacer(flex: 5),

              ],),
            ]
        ),
        width: double.infinity,

      ),);
  }
}

