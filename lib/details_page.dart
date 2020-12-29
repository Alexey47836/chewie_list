import 'package:chewie/chewie.dart';
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
    _videoPlayerController = VideoPlayerController.network(widget.video.path);
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
      body: FutureBuilder(
        future: initializeVideoPlayer,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ChewieItem(videoPlayerController: _videoPlayerController);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
