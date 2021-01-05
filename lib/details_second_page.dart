import 'package:flutter/material.dart';
import 'models/video.dart';
import 'package:video_player/video_player.dart';
import 'package:test_chewie_list/chewie_item.dart';

class DetailsSecondListPage extends StatefulWidget {
  final Video video;

  DetailsSecondListPage({Key key, @required this.video}) : super(key: key);

  @override
  _DetailsSecondListPageState createState() => _DetailsSecondListPageState();
}

class _DetailsSecondListPageState extends State<DetailsSecondListPage> {
  VideoPlayerController _vpc1;
  VideoPlayerController _vpc2;
  VideoPlayerController _vpc3;
  VideoPlayerController _vpc4;
  VideoPlayerController _vpc5;
  VideoPlayerController _vpc6;
  VideoPlayerController _vpc7;
  VideoPlayerController _vpc8;
  Future<void> _initVP1;
  Future<void> _initVP2;
  Future<void> _initVP3;
  Future<void> _initVP4;
  Future<void> _initVP5;
  Future<void> _initVP6;
  Future<void> _initVP7;
  Future<void> _initVP8;
  VideoPlayerController _videoPlayerController;
  Future<void> _initializeVideoPlayer;
  bool initFlag = false;
  Key myKey = Key('1');

  // int _playBackTime;
  // Duration newCurrentPosition;

  @override
  void initState() {
    _vpc1 = VideoPlayerController.network(widget.video.pathLOne,
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));
    _initVP1 = _vpc1.initialize();
    // ..initialize().then((_) {
    //   setState(() {});
    // });
    _vpc2 = VideoPlayerController.network(widget.video.pathLTwo,
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));
    _initVP2 = _vpc2.initialize();
    // ..initialize().then((_) {
    //   setState(() {});
    // });
    _vpc3 = VideoPlayerController.network(widget.video.pathLThree,
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));
    _initVP3 = _vpc3.initialize();
    // ..initialize().then((_) {
    //   setState(() {});
    // });
    _vpc4 = VideoPlayerController.network(widget.video.pathLFour,
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));
    _initVP4 = _vpc4.initialize();
    // ..initialize().then((_) {
    //   setState(() {});
    // });
    _vpc5 = VideoPlayerController.network(widget.video.pathROne,
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));
    _initVP5 = _vpc5.initialize();
    // ..initialize().then((_) {
    //   setState(() {});
    // });
    _vpc6 = VideoPlayerController.network(widget.video.pathRTwo,
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));
    _initVP6 = _vpc6.initialize();
    // ..initialize().then((_) {
    //   setState(() {});
    // });
    _vpc7 = VideoPlayerController.network(widget.video.pathRThree,
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));
    _initVP7 = _vpc7.initialize();
    // ..initialize().then((_) {
    //   setState(() {});
    // });
    _vpc8 = VideoPlayerController.network(widget.video.pathRFour,
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));
    _initVP8 = _vpc8.initialize();
    // ..initialize().then((_) {
    //   setState(() {});
    // });
    _initializeVideoPlayer = _initVP1;
    _videoPlayerController = _vpc1;
    // _videoPlayerController =
    //     VideoPlayerController.network(widget.video.pathLOne);
    // _videoPlayerController.addListener(() {
    //   setState(() {
    //     _playBackTime = _videoPlayerController.value.position.inSeconds;
    //   });
    // });
    // _initializeVideoPlayer = _videoPlayerController.initialize();
    super.initState();
  }

  @override
  void dispose() {
    _initializeVideoPlayer = null;
    _initVP1 = null;
    _initVP2 = null;
    _initVP3 = null;
    _initVP4 = null;
    _initVP5 = null;
    _initVP6 = null;
    _initVP7 = null;
    _initVP8 = null;
    _videoPlayerController.dispose();
    _vpc1.dispose();
    _vpc2.dispose();
    _vpc3.dispose();
    _vpc4.dispose();
    _vpc5.dispose();
    _vpc6.dispose();
    _vpc7.dispose();
    _vpc8.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left_outlined),
          onPressed: () {
            _videoPlayerController.pause();
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.green,
        title: Text(
          '${widget.video.name}',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: _initializeVideoPlayer,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Container(
                    height: 240,
                    child: ChewieItem(
                        videoPlayerController: _videoPlayerController));
              } else {
                return Container(
                    height: 240.0,
                    child: Center(child: CircularProgressIndicator()));
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {
                  setState(() {
                    _videoPlayerController.pause();
                    _videoPlayerController = _vpc1;
                    _initializeVideoPlayer = _initVP1;
                  });
                },
                color: Colors.deepPurple,
                child: Text(
                  '1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _videoPlayerController.pause();
                    _videoPlayerController = _vpc2;
                    _initializeVideoPlayer = _initVP2;
                  });
                },
                color: Colors.deepPurple,
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _videoPlayerController.pause();
                    _videoPlayerController = _vpc3;
                    _initializeVideoPlayer = _initVP3;
                  });
                },
                color: Colors.deepPurple,
                child: Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _videoPlayerController.pause();
                    _videoPlayerController = _vpc4;
                    _initializeVideoPlayer = _initVP4;
                  });
                },
                color: Colors.deepPurple,
                child: Text(
                  '4',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {
                  setState(() {
                    _videoPlayerController.pause();
                    _videoPlayerController = _vpc5;
                    _initializeVideoPlayer = _initVP5;
                  });
                },
                color: Colors.deepPurple,
                child: Text(
                  '5',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _videoPlayerController.pause();
                    _videoPlayerController = _vpc6;
                    _initializeVideoPlayer = _initVP6;
                  });
                },
                color: Colors.deepPurple,
                child: Text(
                  '6',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _videoPlayerController.pause();
                    _videoPlayerController = _vpc7;
                    _initializeVideoPlayer = _initVP7;
                  });
                },
                color: Colors.deepPurple,
                child: Text(
                  '7',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _videoPlayerController.pause();
                    _videoPlayerController = _vpc8;
                    _initializeVideoPlayer = _initVP8;
                  });
                },
                color: Colors.deepPurple,
                child: Text(
                  '8',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
