import 'package:flutter/material.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

import 'package:rhythmic/UI/musiclist.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(data: MediaQueryData(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                backgroundColor: Colors.black,
                resizeToAvoidBottomInset: false,
                appBar:AppBar(
                  backgroundColor: Color.fromRGBO(68, 44, 108, 1.0),
                  automaticallyImplyLeading: false,
                  leading: IconButton(
                    color: Colors.transparent,

                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MusicList()));
                    },
                  ),
                  actions: [],
                  centerTitle: false,
                  elevation: 2,
                ),
                body: SafeArea(
                    child: GestureDetector(
                        child: Align(
                          alignment: AlignmentDirectional(-0.2, -0.2),
                          child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 50, 0, 50),
                                        child: Image.network(
                                          'https://picsum.photos/seed/735/600',
                                          width: 250,
                                          height: 250,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 220, 0),
                                        child: Text(
                                          'Sufjan Stevens,',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontFamily:'Roboto',
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 160, 0),
                                        child: Text(
                                          'Fourth of July',
                                          style: TextStyle(
                                            fontFamily:'Roboto',
                                            color: Colors.white,
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ]
                                ),
                              Expanded(
                          child: Align(
                          alignment: AlignmentDirectional(-0.45, -1),
                          child: Stack(
                            alignment: AlignmentDirectional(-0.30000000000000004, 0),
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-0.45, -0.01),
                                child: Padding(
                                  padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 50),
                                  child: LinearPercentIndicator(
                                    percent: 1,
                                    width: 350,
                                    lineHeight: 10,
                                    animation: true,
                                    progressColor:
                                    Colors.white,
                                    backgroundColor: Color(0xFFF1F4F8),
                                    padding: EdgeInsets.zero,
                                    barRadius: Radius.circular(50),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0, -1.8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Icon(
                              Icons.fast_rewind,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.play_circle_fill_outlined,
                              color: Colors.white,
                              size: 80,
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.fast_forward,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ],
                ),
            ),
        ),
    ),
    )
        )
    );
  }
}