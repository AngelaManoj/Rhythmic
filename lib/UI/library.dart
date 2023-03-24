import 'package:flutter/material.dart';
import 'package:rhythmic/UI/musiclist.dart';
import 'package:rhythmic/UI/search.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("Library"),
        backgroundColor: Color.fromRGBO(68, 44, 108, 1.0),),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
        child: InkWell(onTap:(){
      MaterialPageRoute(builder: (context)=> MusicList());},
      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/d/db/Olly_Murs-9859.jpg"))
          ),
          Container(
            padding: const EdgeInsets.all(8),

            child:
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMn8FfIXN2LiUEZfHqu9xozCGpSZFanr1Weg&usqp=CAU",),

    ),
          Container(

            padding: const EdgeInsets.all(8),

            child: InkWell(onTap:(){
              MaterialPageRoute(builder: (context)=> MusicList());} ,
    child: Image.network("https://img.mensxp.com/media/content/2020/Apr/Leading-B-Wood-Singers-Who-Lost-On-Reality-Shows5_5ea7d4b31b6a8.jpeg")),

          ),
          Container(
            padding: const EdgeInsets.all(8),

            child: Image.network("https://upload.wikimedia.org/wikipedia/commons/d/db/Olly_Murs-9859.jpg")
    ),
          
          Container(
            padding: const EdgeInsets.all(8),

            child: Image.network("https://upload.wikimedia.org/wikipedia/commons/d/db/Olly_Murs-9859.jpg")
          ),
          Container(
            padding: const EdgeInsets.all(8),

            child: Image.network("https://img.mensxp.com/media/content/2020/Apr/Leading-B-Wood-Singers-Who-Lost-On-Reality-Shows5_5ea7d4b31b6a8.jpeg")
          ),
          Container(
              padding: const EdgeInsets.all(8),
              child: InkWell(onTap:(){
                MaterialPageRoute(builder: (context)=> MusicList());},
                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/d/db/Olly_Murs-9859.jpg"))
          ),
          Container(
              padding: const EdgeInsets.all(8),
              child: InkWell(onTap:(){
                MaterialPageRoute(builder: (context)=> MusicList());},
                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/d/db/Olly_Murs-9859.jpg"))
          ),
          Container(
              padding: const EdgeInsets.all(8),
              child: InkWell(onTap:(){
                MaterialPageRoute(builder: (context)=> MusicList());},
                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/d/db/Olly_Murs-9859.jpg"))
          ),
          Container(
              padding: const EdgeInsets.all(8),
              child: InkWell(onTap:(){
                MaterialPageRoute(builder: (context)=> MusicList());},
                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/d/db/Olly_Murs-9859.jpg"))
          ),
          Container(
              padding: const EdgeInsets.all(8),
              child: InkWell(onTap:(){
                MaterialPageRoute(builder: (context)=> MusicList());},
                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/d/db/Olly_Murs-9859.jpg"))
          ),
          Container(
              padding: const EdgeInsets.all(8),
              child: InkWell(onTap:(){
                MaterialPageRoute(builder: (context)=> MusicList());},
                  child: Image.network("https://upload.wikimedia.org/wikipedia/commons/d/db/Olly_Murs-9859.jpg"))
          ),
        ],
      ),
    );
  }
}
