import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  State<AboutUs> createState() => _AboutUsState();
  @override
  const AboutUs({Key? key}) : super(key: key);
}
class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About Us", style: TextStyle(color: Colors.white,),),
        backgroundColor:  Color.fromRGBO(68, 44, 108, 1.0),
      ),
      backgroundColor: Color(0xfff0E0325),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/8,
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/splash.png"),fit: BoxFit.fitWidth,) ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/20,
          ),
          Text(
            "Music has a great effect on our body and mental health . It helps us to reduce stress, reduce pain, improves mood, improved sleep and makes our body calm.Music recognition app distills samples of a song into fingerprints, and matches these fingerprints against fingerprints from known songs, taking into account their timing relative to each other within a song.",
            style: TextStyle(color: Colors.white, fontSize: 20,),),

        ],
      ),
    );
  }



}