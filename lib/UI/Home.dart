import 'package:flutter/material.dart';
import 'package:rhythmic/UI/about.dart';
import 'package:rhythmic/UI/library.dart';
import 'package:rhythmic/UI/search.dart';

void main() => runApp(DestiniApp());

class DestiniApp extends StatefulWidget {
  @override
  _DestiniAppState createState() => _DestiniAppState();
}

class _DestiniAppState extends State<DestiniApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(68, 44, 108, 1.0),
            leading: IconButton(
              onPressed: () { Navigator.push(context,
    MaterialPageRoute(builder: (context) => AboutUs()));
    },
              icon: Icon(Icons.account_balance_outlined),
            ),
            actions: [

              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Library()));
                },
                icon: Icon(Icons.music_note),
              ),
            ],
          ),


          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height/6,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width/2,
                      ),
                      IconButton(
                        onPressed: () {},

                        icon: Icon(Icons.search_sharp),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //Text("Tap To Rythmic",style: TextStyle(color: Colors.white),textAlign: TextAlign.left,)
                    ],
                  ),
                  Text("Tap To Rhythmic",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  Container(
                    height: MediaQuery.of(context).size.height/2 ,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/splash.png"),
                          fit: BoxFit.contain
                      ),
                      shape: BoxShape.circle
                    ),
                  ),
                  IconButton(

                      onPressed:() {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => Search()));
          },
                    icon: Icon(Icons.search),color: Colors.white,)

                ],
              ),
            ),
          ),
          // body: Container(
          //   decoration: BoxDecoration(
          //
          //     image: DecorationImage(
          //         image: ExactAssetImage("assets/splash.png"),
          //         fit: BoxFit.contain
          //
          //
          //
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
