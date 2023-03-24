import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rhythmic/UI/music.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("searched song"),
          backgroundColor: Color.fromRGBO(68, 44, 108, 1.0),),
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
                  "Author",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("song no $index"));
          }),
    );
  }
}
