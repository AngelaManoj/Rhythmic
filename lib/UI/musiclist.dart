import 'package:flutter/material.dart';
import 'package:rhythmic/UI/Home.dart';
import 'package:rhythmic/UI/music.dart';

class MusicList extends StatefulWidget {
  const MusicList({Key? key}) : super(key: key);

  @override
  State<MusicList> createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("song"),
        backgroundColor: Color.fromRGBO(68, 44, 108, 1.0),
        leading: IconButton(
          color: Colors.transparent,

          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DestiniApp()));
          },
        ),
      ),
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.queue_music),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Music()));
                },

                trailing: const Text(
                  "name",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("song no $index"));
          }),
    );
  }
}
