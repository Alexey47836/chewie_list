import 'package:flutter/material.dart';
import 'package:test_chewie_list/models/video.dart';
import 'details_second_page.dart';

class SecondListPage extends StatefulWidget {
  @override
  _SecondListPageState createState() => _SecondListPageState();
}

class _SecondListPageState extends State<SecondListPage> {
  List<Video> _secondVideoList;

  @override
  void initState() {
    _secondVideoList = [
      Video(
        id: 1,
        name: 'Exercise 2',
        pathLOne: 'https://1751703346.rsc.cdn77.org/p1/p1_e2_l_c1.mp4',
        pathLTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e2_l_c2.mp4',
        pathLThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e2_l_c3.mp4',
        pathLFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e2_l_c4.mp4',
        pathROne: 'https://1751703346.rsc.cdn77.org/p1/p1_e2_r_c1.mp4',
        pathRTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e2_r_c2.mp4',
        pathRThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e2_r_c3.mp4',
        pathRFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e2_r_c4.mp4',
      ),
      Video(
        id: 2,
        name: 'Exercise 3',
        pathLOne: 'https://1751703346.rsc.cdn77.org/p1/p1_e3_l_c1.mp4',
        pathLTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e3_l_c2.mp4',
        pathLThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e3_l_c3.mp4',
        pathLFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e3_l_c4.mp4',
        pathROne: 'https://1751703346.rsc.cdn77.org/p1/p1_e3_r_c1.mp4',
        pathRTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e3_r_c2.mp4',
        pathRThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e3_r_c3.mp4',
        pathRFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e3_r_c4.mp4',
      ),
      Video(
        id: 3,
        name: 'Exercise 4',
        pathLOne: 'https://1751703346.rsc.cdn77.org/p1/p1_e4_l_c1.mp4',
        pathLTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e4_l_c2.mp4',
        pathLThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e4_l_c3.mp4',
        pathLFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e4_l_c4.mp4',
        pathROne: 'https://1751703346.rsc.cdn77.org/p1/p1_e4_r_c1.mp4',
        pathRTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e4_r_c2.mp4',
        pathRThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e4_r_c3.mp4',
        pathRFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e4_r_c4.mp4',
      ),
      Video(
        id: 4,
        name: 'Exercise 5',
        pathLOne: 'https://1751703346.rsc.cdn77.org/p1/p1_e5_l_c1.mp4',
        pathLTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e5_l_c2.mp4',
        pathLThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e5_l_c3.mp4',
        pathLFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e5_l_c4.mp4',
        pathROne: 'https://1751703346.rsc.cdn77.org/p1/p1_e5_r_c1.mp4',
        pathRTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e5_r_c2.mp4',
        pathRThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e5_r_c3.mp4',
        pathRFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e5_r_c4.mp4',
      ),
      Video(
        id: 5,
        name: 'Exercise 6',
        pathLOne: 'https://1751703346.rsc.cdn77.org/p1/p1_e6_l_c1.mp4',
        pathLTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e6_l_c2.mp4',
        pathLThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e6_l_c3.mp4',
        pathLFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e6_l_c4.mp4',
        pathROne: 'https://1751703346.rsc.cdn77.org/p1/p1_e6_r_c1.mp4',
        pathRTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e6_r_c2.mp4',
        pathRThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e6_r_c3.mp4',
        pathRFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e6_r_c4.mp4',
      ),
      Video(
        id: 6,
        name: 'Exercise 7',
        pathLOne: 'https://1751703346.rsc.cdn77.org/p1/p1_e7_l_c1.mp4',
        pathLTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e7_l_c2.mp4',
        pathLThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e7_l_c3.mp4',
        pathLFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e7_l_c4.mp4',
        pathROne: 'https://1751703346.rsc.cdn77.org/p1/p1_e7_r_c1.mp4',
        pathRTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e7_r_c2.mp4',
        pathRThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e7_r_c3.mp4',
        pathRFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e7_r_c4.mp4',
      ),
      Video(
        id: 7,
        name: 'Exercise 14',
        pathLOne: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_l_c1.mp4',
        pathLTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_l_c2.mp4',
        pathLThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_l_c3.mp4',
        pathLFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_l_c4.mp4',
        pathROne: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_r_c1.mp4',
        pathRTwo: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_r_c2.mp4',
        pathRThree: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_r_c3.mp4',
        pathRFour: 'https://1751703346.rsc.cdn77.org/p1/p1_e14_r_c4.mp4',
      ),
    ];
    super.initState();
  }

  Widget navigationVideo(Video video) {
    return DetailsSecondListPage(video: video);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: Text(
          'Second Video List',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      body: ListView.builder(
          itemCount: _secondVideoList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(_secondVideoList[index].name),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        navigationVideo(_secondVideoList[index]),
                  ),
                );
              },
            );
          }),
    );
  }
}
