import 'package:flutter/material.dart';
import 'package:test_chewie_list/models/video.dart';
import 'package:test_chewie_list/details_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Video> _videos;

  @override
  void initState() {
    _videos = [
      Video(
          id: 1,
          name: 'Video 1',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_l_c1.mp4'),
      Video(
          id: 2,
          name: 'Video 2',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_l_c2.mp4'),
      Video(
          id: 3,
          name: 'Video 3',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_l_c3.mp4'),
      Video(
          id: 4,
          name: 'Video 4',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_l_c4.mp4'),
      Video(
          id: 5,
          name: 'Video 5',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_r_c1.mp4'),
      Video(
          id: 6,
          name: 'Video 6',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e11_c4.mp4'),
      Video(
          id: 7,
          name: 'Video 7',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_r_c4.mp4'),
      Video(
          id: 8,
          name: 'Video 8',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e11_c1.mp4'),
      Video(
          id: 9,
          name: 'Video 9',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e11_c2.mp4'),
      Video(
          id: 10,
          name: 'Video 10',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e11_c3.mp4'),
      Video(
          id: 11,
          name: 'Video 11',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e11_c4.mp4'),
      Video(
          id: 12,
          name: 'Video 12',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e13_r_c2.mp4'),
      Video(
          id: 13,
          name: 'Video 13',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e13_r_c3.mp4'),
      Video(
          id: 14,
          name: 'Video 14',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e13_r_c4.mp4'),
      Video(
          id: 15,
          name: 'Video 15',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_l_c1.mp4'),
      Video(
          id: 16,
          name: 'Video 16',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_l_c2.mp4'),
      Video(
          id: 17,
          name: 'Video 17',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_l_c3.mp4'),
      Video(
          id: 18,
          name: 'Video 18',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_l_c4.mp4'),
      Video(
          id: 19,
          name: 'Video 19',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_r_c1.mp4'),
      Video(
          id: 20,
          name: 'Video 20',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_r_c2.mp4'),
      Video(
          id: 21,
          name: 'Video 21',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_r_c3.mp4'),
      Video(
          id: 22,
          name: 'Video 22',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_r_c4.mp4'),
      Video(
          id: 23,
          name: 'Video 23',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e15_c1.mp4'),
      Video(
          id: 24,
          name: 'Video 24',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e15_c2.mp4'),
      Video(
          id: 25,
          name: 'Video 25',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e15_c3.mp4'),
      Video(
          id: 26,
          name: 'Video 26',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e15_c4.mp4'),
      Video(
          id: 27,
          name: 'Video 27',
          path: 'https://1751703346.rsc.cdn77.org/p1/p1_e16_l_c1.mp4'),
    ];
    super.initState();
  }

  Widget navigationVideo(Video video) {
    return DetailsPage(video: video);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Video List',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      body: ListView.builder(
          itemCount: _videos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_videos[index].name),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => navigationVideo(_videos[index]),
                  ),
                );
              },
            );
          }),
    );
  }
}
