import 'package:flutter/material.dart';
import 'package:tiktok_clone/features/videos/widgets/video_post.dart';

class VideoTimelineScreen extends StatefulWidget {
  const VideoTimelineScreen({super.key});

  @override
  State<VideoTimelineScreen> createState() => _VideoTimelineScreenState();
}

class _VideoTimelineScreenState extends State<VideoTimelineScreen> {
  int _itemCount = 4;
  final PageController _pageController = PageController();
  final Duration _scrollDuration = const Duration(milliseconds: 300);
  final Curve _scrollCurve = Curves.linear;

  void _onPageChange(int page) {
    _pageController.animateToPage(
      page,
      duration: _scrollDuration,
      curve: _scrollCurve,
    ); // to avoid the animation in the pageview builder.
    //
    if (page == _itemCount - 1) {
      _itemCount = _itemCount + 4;
    }
    setState(() {});
  }

  void _onVideoFinished() {
    _pageController.nextPage(
      duration: _scrollDuration,
      curve: _scrollCurve,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      onPageChanged: (value) => _onPageChange,
      itemCount: _itemCount,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) =>
          VideoPost(onVideoFinished: _onVideoFinished),
    );
  }
}