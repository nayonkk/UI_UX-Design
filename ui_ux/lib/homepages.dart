import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_ux/page-3.dart';
import 'package:ui_ux/page_1.dart';
import 'package:ui_ux/page_2.dart';
import 'package:ui_ux/page_4.dart';

class  homepages extends StatefulWidget {
  const homepages({super.key});

  @override
  State<homepages> createState() => _homepagesState();
}

class  _homepagesState extends State<homepages> {
  PageController _controller = PageController();
  var onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Stack(
          children: [
            PageView(
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 3);
                });
              },
              controller: _controller,
              children: const [page_1(), page_2(), page_3(), page_4()],
            ),
            Container(
                alignment:const Alignment(0, 0.7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(3);
                      },
                      child: const Text(
                        'skip',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    SmoothPageIndicator(
                        effect:const ColorTransitionEffect(
                            activeDotColor: Colors.teal,
                            dotColor: Colors.black),
                        controller: _controller,
                        count: 4),
                    onLastPage
                        ? GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration:const  Duration(microseconds: 500),
                                  curve: Curves.bounceIn);
                            },
                            child: const Text(
                              'done',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              _controller.nextPage(
                                  duration:const  Duration(microseconds: 500),
                                  curve: Curves.bounceIn);
                            },
                            child: const Text(
                              'next',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          )
                  ],
                ))
          ],
        ));
  }
}
