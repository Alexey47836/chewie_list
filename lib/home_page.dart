import 'package:flutter/material.dart';
import 'package:test_chewie_list/second_list_page.dart';
import 'package:test_chewie_list/models/video.dart';
import 'package:test_chewie_list/details_page.dart';
import 'details_double_video.dart';

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
        name: 'Video 10',
        pathLOne: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_l_c1.mp4',
        pathLTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_l_c2.mp4',
        pathLThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_l_c3.mp4',
        pathLFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_l_c4.mp4',
        pathROne: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_r_c1.mp4',
        pathRTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_r_c2.mp4',
        pathRThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_r_c3.mp4',
        pathRFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e10_r_c4.mp4',
      ),
      Video(
        id: 2,
        name: 'Video 13',
        pathLOne: 'https://1751703346.rsc.cdn77.org/p1/p1_e13_l_c1.mp4',
        pathLTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e13_l_c2.mp4',
        pathLThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e13_l_c3.mp4',
        pathLFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e13_l_c4.mp4',
        pathROne: 'https://1751703346.rsc.cdn77.org/p1/p1_e13_r_c1.mp4',
        pathRTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e13_r_c2.mp4',
        pathRThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e13_r_c3.mp4',
        pathRFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e13_r_c4.mp4',
      ),
      Video(
        id: 3,
        name: 'Video 11',
        pathOne: 'https://1751703346.rsc.cdn77.org/p1/p1_e11_c1.mp4',
        pathTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e11_c2.mp4',
        pathThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e11_c3.mp4',
        pathFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e11_c4.mp4',
      ),
      Video(
        id: 4,
        name: 'Video 12',
        pathOne: 'https://1751703346.rsc.cdn77.org/p1/p1_e12_c1.mp4',
        pathTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e12_c2.mp4',
        pathThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e12_c3.mp4',
        pathFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e12_c4.mp4',
      ),
      Video(
        id: 5,
        name: 'Video 14',
        pathLOne: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_l_c1.mp4',
        pathLTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_l_c2.mp4',
        pathLThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_l_c3.mp4',
        pathLFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_l_c4.mp4',
        pathROne: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_r_c1.mp4',
        pathRTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_r_c2.mp4',
        pathRThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_r_c3.mp4',
        pathRFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_r_c4.mp4',
      ),
      Video(
        id: 6,
        name: 'Video 6',
        pathOne: 'https://1751703346.rsc.cdn77.org/p1/p1_e15_c1.mp4',
        pathTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e15_c1.mp4',
        pathThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e15_c1.mp4',
        pathFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e15_c1.mp4',
      ),
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
        actions: [
          IconButton(
              icon: Icon(Icons.shop_two_rounded),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsDoubleVideo(),
                  ),
                );
              }),
          IconButton(
              icon: Icon(Icons.format_list_bulleted),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondListPage(),
                  ),
                );
              }),
        ],
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
