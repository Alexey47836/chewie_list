import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:test_chewie_list/chewie_item.dart';

class DetailsDoubleVideo extends StatefulWidget {
  @override
  _DetailsDoubleVideoState createState() => _DetailsDoubleVideoState();
}

class _DetailsDoubleVideoState extends State<DetailsDoubleVideo> {
  VideoPlayerController _videoPlayerControllerOne;
  VideoPlayerController _videoPlayerControllerTwo;

  @override
  void initState() {
    super.initState();
    _videoPlayerControllerOne = VideoPlayerController.network(
        'https://1751703346.rsc.cdn77.org/p1/p1_e12_c1.mp4',
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))
      ..initialize().then((_) {
        setState(() {});
      });
    _videoPlayerControllerTwo = VideoPlayerController.network(
        'https://1751703346.rsc.cdn77.org/p1/p1_e15_c1.mp4',
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true))
      ..initialize().then((value) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerControllerOne.dispose();
    _videoPlayerControllerTwo.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left_outlined),
          onPressed: () {
            _videoPlayerControllerOne.pause();
            _videoPlayerControllerTwo.pause();
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Two videos',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      body: ListView(
        children: [
          Container(
              height: 240.0,
              child: _videoPlayerControllerOne.value.initialized
                  ? ChewieItem(videoPlayerController: _videoPlayerControllerOne)
                  : Container(
                      height: 240.0,
                      child: Center(child: CircularProgressIndicator()))),
          Container(
            height: 240.0,
            child: _videoPlayerControllerTwo.value.initialized
                ? ChewieItem(videoPlayerController: _videoPlayerControllerTwo)
                : Container(
                    height: 240.0,
                    child: Center(child: CircularProgressIndicator())),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              color: Colors.blue,
              child: Icon(
                _videoPlayerControllerOne.value.isPlaying &&
                        _videoPlayerControllerTwo.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  if (_videoPlayerControllerOne.value.isPlaying &&
                      _videoPlayerControllerTwo.value.isPlaying) {
                    _videoPlayerControllerOne.pause();
                    _videoPlayerControllerTwo.pause();
                  } else {
                    _videoPlayerControllerOne.play();
                    _videoPlayerControllerTwo.play();
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
