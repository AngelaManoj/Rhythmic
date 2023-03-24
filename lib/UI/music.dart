import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:rhythmic/UI/audio.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(68, 44, 108, 1.0),
        title: Text("song name",style: TextStyle(color: Colors.white)),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLP9a3ryhmpHBBjq4mx32GZmUVnc18Lv3by6ROZ4DfYEPbq2VKm2niLCZJBwgFjGyj-os&usqp=CAU',
              height: MediaQuery.of(context).size.height*10,
              width: MediaQuery.of(context).size.height*30,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: 800,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    //alignment: Alignment.bottomCenter,
                    child: Text(
                      'Author name',
                      style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0),
                    ),
                 ),




                IconButton(
                      //onPressed: () => AudioPlayer().play(AssetSource('assets/audio1.mp3')),
                    icon: Icon(Icons.play_arrow),color: Colors.black, onPressed: () {Navigator.push(context,
    MaterialPageRoute(builder: (context) => MyApp()));
    },),




              ],
            ),
          ),
        ],
      ),
    );
  }
}
