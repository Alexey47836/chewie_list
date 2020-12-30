import 'package:flutter/material.dart';
import 'package:test_chewie_list/models/video.dart';
import 'package:video_player/video_player.dart';
import 'package:test_chewie_list/chewie_item.dart';

class DetailsPage extends StatefulWidget {
  final Video video;

  DetailsPage({Key key, @required this.video}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  VideoPlayerController _videoPlayerController;
  Future<void> initializeVideoPlayer;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        widget.video.pathOne == null
            ? widget.video.pathLOne
            : widget.video.pathOne);
    initializeVideoPlayer = _videoPlayerController.initialize();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
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
        title: Text(
          '${widget.video.name}',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: initializeVideoPlayer,
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
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _videoPlayerController.pause();
                    _videoPlayerController = VideoPlayerController.network(
                        widget.video.pathOne == null
                            ? widget.video.pathLOne
                            : widget.video.pathOne);
                    initializeVideoPlayer = _videoPlayerController.initialize();
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
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _videoPlayerController.pause();
                    _videoPlayerController = VideoPlayerController.network(
                        widget.video.pathTwo == null
                            ? widget.video.pathLTwo
                            : widget.video.pathTwo);
                    initializeVideoPlayer = _videoPlayerController.initialize();
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
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _videoPlayerController.pause();
                    _videoPlayerController = VideoPlayerController.network(
                        widget.video.pathThree == null
                            ? widget.video.pathLThree
                            : widget.video.pathThree);
                    initializeVideoPlayer = _videoPlayerController.initialize();
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
              RaisedButton(
                onPressed: () {
                  setState(() {
                    _videoPlayerController.pause();
                    _videoPlayerController = VideoPlayerController.network(
                        widget.video.pathFour == null
                            ? widget.video.pathLFour
                            : widget.video.pathFour);
                    initializeVideoPlayer = _videoPlayerController.initialize();
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
        ],
      ),
    );
  }
}
